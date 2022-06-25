package §9!H§
{
   import §#!X§.LevelManager;
   import §#y§.§0!D§;
   import §'N§.§'!6§;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §3Y§.LevelObject;
   import §3Y§.§[r§;
   import §3Y§.§each §;
   import §9!!§.Integer;
   import §?A§.LevelMain;
   import §?A§.LevelSlingshot;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §7k§ extends BasicController
   {
      
      public static const §?!R§:int = 0;
      
      public static const §,![§:int = 1;
      
      public static const §2a§:int = 2;
      
      public static const §[!J§:int = 3;
      
      public static const §!$§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §@!`§:int = 7;
      
      protected static const §#9§:Number = 0.001;
      
      public static const §!!?§:Number = 2000;
      
      public static const §-!_§:Number = 2500;
      
      public static const §7e§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §7k§))
         {
            §?!R§ = 0;
            while(true)
            {
               §,![§ = 1;
               loop1:
               while(true)
               {
                  §2a§ = 2;
                  loop2:
                  while(true)
                  {
                     §[!J§ = 3;
                     while(true)
                     {
                        §!$§ = 4;
                        continue loop1;
                        loop8:
                        for(; _loc2_ || _loc1_; if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        },§§goto(addr47))
                        {
                           if(_loc1_)
                           {
                              continue loop2;
                           }
                           §!!?§ = 2000;
                           loop9:
                           while(_loc2_ || §7k§)
                           {
                              §-!_§ = 2500;
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop9;
                              }
                              continue loop1;
                           }
                           while(!_loc1_)
                           {
                              §§push(§§findproperty(§#9§));
                              §§push(§0!D§.§"!3§);
                              if(!_loc1_)
                              {
                                 §§push(§§pop() / 100);
                              }
                              §§pop().§#9§ = §§pop();
                              continue loop8;
                              §§goto(addr78);
                           }
                           addr78:
                           while(true)
                           {
                              LEVEL_STATE_VICTORY2_END = 6;
                              do
                              {
                                 §@!`§ = 7;
                                 §§goto(addr110);
                              }
                              while(!(_loc2_ || _loc1_));
                              
                              §§goto(addr54);
                           }
                           addr110:
                        }
                     }
                  }
               }
            }
         }
         addr54:
      }
      
      public var §6$§:int = 0;
      
      protected var §"!0§:int = 0;
      
      public var §3!^§:Number;
      
      protected var §8!"§:Number = 0;
      
      protected var §9!6§:Boolean = false;
      
      private var §2!f§:Number = 0;
      
      public var §'!O§:Number = 0;
      
      protected var §=f§:Boolean;
      
      protected var §&!]§:Number = 0;
      
      protected var §=!A§:Number = 0;
      
      protected var §>'§:Boolean = true;
      
      protected var §%a§:Integer;
      
      public function §7k§(param1:LevelMain)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§%a§ = new Integer();
         }
         do
         {
            super(param1);
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.init();
            while(true)
            {
               this.§%a§.assign(0);
               loop1:
               while(true)
               {
                  this.§6$§ = -1;
                  addr142:
                  while(true)
                  {
                     this.§"!0§ = 0;
                     while(true)
                     {
                        this.§8!"§ = 0;
                        loop4:
                        while(_loc1_)
                        {
                           this.§9!6§ = false;
                           while(true)
                           {
                              this.§[1§(§?!R§);
                              addr101:
                              while(!_loc2_)
                              {
                                 continue loop1;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
               while(!(_loc2_ && _loc2_))
               {
                  §6f§.objects.setDamageEnabled(true);
                  §§goto(addr56);
               }
            }
         }
         §§goto(addr73);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            param1 = §6f§.update(param1,true);
            while(true)
            {
               this.§9K§(param1);
               while(_loc3_ || _loc3_)
               {
                  this.§9!2§(param1);
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr56:
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §9K§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§"!0§ != 0)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr45:
                  §6f§.camera.adjustManualScale(this.§"!0§ > 0,param1 * §#9§);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §6f§.clearLevel();
            while(true)
            {
               removeEventListeners();
               §§goto(addr46);
            }
         }
         addr46:
         while(true)
         {
            this.§6$§ = -1;
            if(_loc1_)
            {
               if(!_loc2_)
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
      
      public function §"N§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§6f§.camera.mCurrentCameraSliderLocation >= §0!D§.§7!?§)
            {
               while(true)
               {
                  §§push(!§6f§.objects.isWorldAtSleep());
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc1_ && this))
                        {
                           if(!_loc1_)
                           {
                              §§push(false);
                              break;
                           }
                           continue;
                        }
                        if(!(_loc2_ || this))
                        {
                           §§goto(addr96);
                        }
                        else
                        {
                           addr86:
                        }
                     }
                     §§push(true);
                     if(_loc2_ || _loc2_)
                     {
                        return §§pop();
                     }
                     break;
                  }
                  break;
               }
               if(!(_loc1_ && _loc1_))
               {
                  return §§pop();
               }
               §§goto(addr96);
            }
            addr96:
            return false;
         }
         §§goto(addr86);
      }
      
      public function §&!K§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§0!D§ = §6f§.camera;
         if(_loc3_)
         {
            §§push(_loc2_.§0!%§);
            loop0:
            while(true)
            {
               §§push(0);
               addr122:
               while(§§pop() > §§pop())
               {
               }
               addr24:
               return;
               loop3:
               while(true)
               {
                  §§push(_loc2_.§0!%§);
                  if(!_loc3_)
                  {
                     continue loop0;
                  }
                  §§push(0);
                  if(_loc4_)
                  {
                     break;
                  }
                  if(§§pop() <= §§pop())
                  {
                     loop4:
                     while(true)
                     {
                        if(this.§"N§())
                        {
                           continue loop3;
                        }
                        _loc2_.§0!%§ = §0!D§.§@!!§ / 2;
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           loop5:
                           while(true)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 continue loop4;
                              }
                              addr118:
                              while(true)
                              {
                                 if(§6f§.slingshot.birdsAvailable)
                                 {
                                    continue loop5;
                                 }
                                 addr28:
                                 §§goto(addr24);
                              }
                           }
                           continue;
                        }
                        addr76:
                        while(true)
                        {
                           if(_loc4_ && this)
                           {
                              continue loop3;
                           }
                        }
                        §§goto(addr28);
                     }
                  }
                  §§goto(addr24);
               }
               §§goto(addr122);
            }
         }
         §§goto(addr123);
      }
      
      public function §[1§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§3!P§(false));
            if(_loc3_ || this)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(!_loc4_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr548:
                     while(true)
                     {
                        §§push(param2);
                        loop3:
                        while(true)
                        {
                           §§push(!§§pop());
                           addr524:
                           addr315:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr525:
                              while(!_loc4_)
                              {
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              if(!(_loc4_ && param1))
                              {
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
               while(!§§pop())
               {
                  §§goto(addr502);
               }
               §§goto(addr529);
            }
         }
         §§goto(addr425);
      }
      
      public function § !H§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8!"§ = Math.max(this.§8!"§,param1);
         }
      }
      
      protected function §9[§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§6f§.slingshot.mSlingShotState == LevelSlingshot.§<L§);
            if(_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc1_))
               {
                  §§goto(addr56);
               }
               §§goto(addr68);
            }
            addr56:
            §§push(§§pop());
            if(_loc1_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            if(§§pop())
            {
               if(_loc1_)
               {
                  addr68:
                  §§pop();
                  §§push(!§6f§.objects.hasBirds());
                  if(_loc1_)
                  {
                     return Boolean(§§pop());
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §9!2§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:LevelObject = null;
         if(_loc6_)
         {
            §§push(this);
            §§push(this.§3!^§);
            if(_loc6_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§3!^§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§9!6§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§8!"§);
                        if(_loc6_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§8!"§ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§8!"§);
                           addr1367:
                           while(true)
                           {
                              §§push(0);
                              addr1368:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§3!^§ = 0;
                                       addr1372:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr1369:
                                 }
                              }
                           }
                           loop114:
                           while(true)
                           {
                              if(_loc5_ && _loc2_)
                              {
                                 continue loop3;
                              }
                              §§push(!§6f§.objects.isPigsAlive());
                              loop115:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop116:
                                 while(true)
                                 {
                                    loop117:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(this.§9!6§);
                                          loop95:
                                          while(!(_loc5_ && param1))
                                          {
                                             if(!_loc5_)
                                             {
                                                §§push(!§§pop());
                                                loop96:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop97:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop118:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop105:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop57:
                                                               while(true)
                                                               {
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     §§pop();
                                                                     loop58:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(this.§9[§());
                                                                           loop59:
                                                                           for(; !_loc5_; if(!(_loc6_ || _loc2_))
                                                                           {
                                                                              continue;
                                                                           },§§goto(addr369),§§push(Boolean(§§pop())))
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 loop61:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop62:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§8!"§ = 15000;
                                                                                          while(true)
                                                                                          {
                                                                                             this.§9!6§ = true;
                                                                                             loop64:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   loop66:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      loop67:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§3!P§(false));
                                                                                                         loop68:
                                                                                                         while(!(_loc5_ && this))
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop69:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §6f§.gameOver();
                                                                                                                  loop70:
                                                                                                                  while(_loc6_ || _loc3_)
                                                                                                                  {
                                                                                                                     loop120:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this);
                                                                                                                        §§push(this.§'!O§);
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - param1);
                                                                                                                        }
                                                                                                                        §§pop().§'!O§ = §§pop();
                                                                                                                        loop121:
                                                                                                                        while(!_loc5_)
                                                                                                                        {
                                                                                                                           if(_loc6_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(this.§'!O§);
                                                                                                                              if(!(_loc5_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 loop122:
                                                                                                                                 while(_loc6_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                    {
                                                                                                                                       loop123:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.§'!O§ = 0;
                                                                                                                                          loop124:
                                                                                                                                          while(_loc6_ || this)
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   addr871:
                                                                                                                                                   loop125:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§6$§);
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§[!J§);
                                                                                                                                                         loop126:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() != §§pop())
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§6$§);
                                                                                                                                                               if(_loc6_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§!$§);
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop() != §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§6$§);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§?!R§);
                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() != §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§6$§);
                                                                                                                                                                                 if(_loc5_ && param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop126;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§,![§);
                                                                                                                                                                                    if(_loc6_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() != §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§6$§);
                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop126;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1636:
                                                                                                                                                                                          §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc5_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc6_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Boolean(§6f§.camera.isOnCastleView()));
                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      if(_loc6_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc5_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr214:
                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc6_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              for(; _loc6_ || _loc2_; if(!(_loc6_ || this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              },§§push(!§§pop()),if(_loc6_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc6_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc5_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr93);
                                                                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1159);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1094);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1036);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr632);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr527);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr415);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr369);
                                                                                                                                                                                                                              },§§goto(addr93))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc6_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    if(_loc6_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc6_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§6f§.camera.mCurrentAction == §0!D§.§&j§);
                                                                                                                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr93:
                                                                                                                                                                                                                                             if(_loc6_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr106:
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc6_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               this.§[1§(§[!J§);
                                                                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break loop125;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1686:
                                                                                                                                                                                                                                                                           return;
                                                                                                                                                                                                                                                                           addr140:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr704:
                                                                                                                                                                                                                                                                           §§push(this.§'!O§);
                                                                                                                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                                                                              if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop122;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr719:
                                                                                                                                                                                                                                                                                    §§push(Boolean(§6f§.objects.hasBirds()));
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §6f§.updatePigAnimations(param1);
                                                                                                                                                                                                                                                                                    if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc5_ && _loc2_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop123;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          loop155:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(!§6f§.camera.isOnCastleView());
                                                                                                                                                                                                                                                                                             addr415:
                                                                                                                                                                                                                                                                                             loop150:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop117;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                   loop134:
                                                                                                                                                                                                                                                                                                   for(; !(_loc5_ && _loc2_); while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc6_ || this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop134;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr383);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1083);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   })
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc6_ || param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop61;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc5_ && _loc3_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop97;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                                                                    addr472:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop69;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§6f§.camera.mCurrentAction == §0!D§.§&j§);
                                                                                                                                                                                                                                                                                                                                             loop147:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc6_ || this))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop115;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop134;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop59;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr724:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                            continue loop123;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         loop139:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr661:
                                                                                                                                                                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                        loop128:
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    while(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                                                                                                                                                                       loop130:
                                                                                                                                                                                                                                                                                                                                                                                       while(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop0;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§push(this.§2!f§);
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr592:
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc6_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr632:
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    this.§'!O§ = 2000;
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr641:
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr893:
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       this.§3!^§ = 0;
                                                                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             continue loop64;
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1039:
                                                                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             this.§=!h§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1044:
                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr969:
                                                                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   continue loop67;
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr829:
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr977:
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(!§6f§.camera.isOnCastleView());
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr837:
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr840:
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc6_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr854:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr862:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§6f§.camera.mCurrentAction == §0!D§.§&j§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               break loop134;
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr870:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            loop81:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1252:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr1253:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1254:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 break loop68;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop116;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr1251:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     break loop81;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr1321:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(this.§9!6§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               loop31:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr1292:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  while(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     break loop95;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  loop26:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1312:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        loop28:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        while(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              loop41:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(this.§9!6§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1274:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1302:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          while(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1283:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr1284:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr1285:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr1287:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§8!"§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr1241:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(6000);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1242:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1243);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1286:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1251);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1303:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1358:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             while(!(_loc5_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                continue loop26;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1359:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr1360:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      break loop28;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1303);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1274);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1272:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1158:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(!§6f§.objects.isPigsAlive());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1159:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1160:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1161:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1163:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         while(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(!§6f§.objects.mSardineCanAdded);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr1124:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr1298:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               while(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr1299:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(this.§8!"§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1267:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        break loop122;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr592);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1339:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            this.§3!^§ = §!!?§;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1343:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(_loc6_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(Boolean(§6f§.objects.isWorldAtSleep()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               break loop59;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1372);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr1162:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr1128:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            continue loop118;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc5_ && _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc5_ && _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop57;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr1100:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr1106:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(!§6f§.objects.mMightyEagleAdded);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr1141:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr1108:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        break loop124;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1269:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1050:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(this.§9[§());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop31;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop41;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      continue loop28;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          continue loop150;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1158:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1254);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    addr383:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc6_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             continue loop58;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc6_ || this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             continue loop114;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          this.§[1§(§,![§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr258:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1641:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(this.§'!O§ <= 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1662:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(§6f§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr1669:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      this.§'!O§ = 1000;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc5_ && _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1686);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   this.§[1§(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1686);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1686);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1679:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1686);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr258);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              addr1270:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1321);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1363:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(this.§3!P§(false));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1335:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1336:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              addr1362:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              loop19:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    continue loop120;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1339);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr527:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc6_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       continue loop19;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                continue loop130;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             this.§[1§(§,![§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr484:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      continue loop155;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1158);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr484:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1149);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1100);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1641);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1641);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr484);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1336);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1243:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1322:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr785:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc6_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               this.§[1§(§,![§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               break loop130;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1669);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr685:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1686);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1360);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1312);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1284);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1161);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1140);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1141);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             continue loop67;
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                this.§=!h§(§@!`§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                break loop121;
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1114:
                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   continue loop67;
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                continue loop62;
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1362);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1363);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr638:
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§4!T§.§1t§.objects.mMightyEagleAdded);
                                                                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr527);
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1106);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr862);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1641);
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr517:
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr862);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           addr636:
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1039);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           else if(§6f§.objects.mMightyEagleHasTouchedGround)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc6_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       continue loop2;
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    this.§3!^§ = §!!?§;
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr969);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1287);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1163);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop3;
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1003:
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr969);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1038:
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop139;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        addr646:
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr829);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  addr632:
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1124);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr632);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1368);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         addr1351:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1242);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1641);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1267);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1241);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop121;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc5_ && this)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop70;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr685);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1044);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1003);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1686);
                                                                                                                                                                                                                                                                                                                                                                                       continue loop147;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr781:
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr785);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1359);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1123);
                                                                                                                                                                                                                                                                                                                                                                                    addr677:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr636);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                 break loop128;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr1083:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr661);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              continue loop105;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop96;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop95;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§6f§.objects.mMightyEagleTimer > 5500);
                                                                                                                                                                                                                                                                                                                                                                                       addr1036:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr1094:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1038);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1253);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        addr662:
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr840);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  addr654:
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1303);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1050);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr517);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr677);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr333:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1021);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr641);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr471:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§goto(addr390);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1686);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr470:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr1298);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1270);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1297:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1285);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1128);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr654);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr456:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1286);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1252);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!(_loc6_ || _loc3_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr837);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(_loc5_ && param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop68;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop1;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1283);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1158);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr870);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1662);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr724);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1641);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1686);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr570);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr472);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1662);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1669);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break loop125;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1282);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1108);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr471);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr333);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr408);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr268:
                                                                                                                                                                                                                                          if(_loc6_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop124;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(this.§'!O§);
                                                                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc6_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr283);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr590);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1641);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr638);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1641);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1292);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr773:
                                                                                                                                                                                                                              if(!(_loc5_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr781);
                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1162);
                                                                                                                                                                                                                              addr231:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr106);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1297);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1296:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr456);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr470);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1160);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr854);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr662);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr214);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr231);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1363);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr980);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr296);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1686);
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr268);
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        addr1638:
                                                                                                                                                                        if(§§pop() == §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1641);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1669);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1686);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr704);
                                                                                                                                                                  }
                                                                                                                                                                  addr1409:
                                                                                                                                                                  if(§§pop() == §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc6_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc4_ = §6f§.activeObject;
                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1625:
                                                                                                                                                                           §§push(Boolean(!_loc4_));
                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1607:
                                                                                                                                                                              if(§§pop() || _loc4_.§19§ < _loc4_.§^V§)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1608:
                                                                                                                                                                                 §§push(Boolean(_loc4_));
                                                                                                                                                                                 §§push(Boolean(_loc4_));
                                                                                                                                                                                 if(!(_loc5_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1620:
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1621:
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       addr1622:
                                                                                                                                                                                       §§push(_loc4_ is §each §);
                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1554:
                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1556:
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                if(!(_loc5_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc6_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1580:
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                         if(_loc6_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1588:
                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  addr1591:
                                                                                                                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1526:
                                                                                                                                                                                                                     addr1525:
                                                                                                                                                                                                                     addr1527:
                                                                                                                                                                                                                     §§push(Boolean(!(_loc4_ as §[r§).§6!9§));
                                                                                                                                                                                                                     §§push(Boolean(!(_loc4_ as §[r§).§6!9§));
                                                                                                                                                                                                                     if(!(_loc5_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1580);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1539:
                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           addr1542:
                                                                                                                                                                                                                           §§push(_loc4_.getSpecialAnimationProgress());
                                                                                                                                                                                                                           if(_loc6_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() >= 0);
                                                                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc5_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc6_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1488:
                                                                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                   if(_loc6_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc6_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1502:
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     this.§=f§ = true;
                                                                                                                                                                                                                                                                     this.§[1§(§!$§);
                                                                                                                                                                                                                                                                     addr1441:
                                                                                                                                                                                                                                                                     §6f§.activeObject = null;
                                                                                                                                                                                                                                                                     addr1518:
                                                                                                                                                                                                                                                                     addr1455:
                                                                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        this.§[1§(§!$§);
                                                                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(false)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1441);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1633:
                                                                                                                                                                                                                                                                                    §§goto(addr1686);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1542);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1518);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1455);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1441);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1608);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1632);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1591);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1441);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1608);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1526);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1631);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1621);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1554);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1525);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1527);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1539);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1488);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1631);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1588);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1502);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1622);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1607);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1502);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1607);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1608);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1620);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1580);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1625);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1631);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1588);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1556);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1607);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1633);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1631);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1441);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1636);
                                                                                                                                                                     §§push(this.§6$§);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1686);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop58;
                                                                                                                                                         }
                                                                                                                                                         §§push(§2a§);
                                                                                                                                                         if(!(_loc5_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1409);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1638);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1636);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1686);
                                                                                                                                                }
                                                                                                                                                addr925:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1299);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§=!h§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                             §§goto(addr1114);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr871);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1269);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1641);
                                                                                                                           }
                                                                                                                           §§goto(addr1369);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc6_ || this)
                                                                                                                           {
                                                                                                                              continue loop67;
                                                                                                                           }
                                                                                                                           addr1234:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.§8!"§ = 6000;
                                                                                                                              addr1237:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§9!6§ = true;
                                                                                                                                 addr1224:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop66;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§6f§.objects.mMightyEagleAdded)
                                                                                                                     {
                                                                                                                        if(_loc6_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§goto(addr1082);
                                                                                                                           §§push(Boolean(§6f§.objects.mMightyEagleHasTouchedGround));
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(!§6f§.objects.mSardineCanAdded);
                                                                                                                     §§goto(addr977);
                                                                                                                  }
                                                                                                                  §§goto(addr1679);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr926);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            continue loop114;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr1150:
                                                                                                }
                                                                                                §§goto(addr1224);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1150);
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              addr1330:
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr1302);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr1237);
                                                                     }
                                                                  }
                                                                  §§goto(addr1274);
                                                               }
                                                            }
                                                            §§goto(addr1184);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr1335);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr1296);
                                             §§goto(addr1195);
                                          }
                                          addr1195:
                                       }
                                       §§goto(addr1234);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr1351);
               }
            }
         }
         §§goto(addr925);
      }
      
      protected function §=!h§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§9!6§);
            if(_loc4_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               while(true)
               {
                  this.§9!6§ = true;
                  addr152:
                  while(true)
                  {
                  }
                  addr97:
                  if(_loc4_ || this)
                  {
                     return;
                  }
               }
            }
            while(true)
            {
               §§push(new Date().time - §6f§.slingshot.timeOfLastBirdShot);
               loop3:
               while(true)
               {
                  §§push(6000);
                  loop4:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop5:
                        while(!§6f§.slingshot.mDragging)
                        {
                           loop6:
                           while(§6f§.objects.isWorldAtSleep())
                           {
                              if(!(_loc3_ && param2))
                              {
                                 if(!(_loc4_ || param2))
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(!(_loc4_ || this))
                                       {
                                          return;
                                       }
                                       addr141:
                                       continue;
                                    }
                                    continue loop5;
                                 }
                                 if(!_loc4_)
                                 {
                                    break loop3;
                                 }
                                 this.§8!"§ = Math.min(this.§8!"§,3500);
                                 while(true)
                                 {
                                    break loop6;
                                 }
                                 addr90:
                              }
                              §§goto(addr90);
                           }
                           while(true)
                           {
                              §§push(this.§8!"§);
                              if(!_loc3_)
                              {
                                 §§push(0);
                                 if(_loc4_)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       break;
                                    }
                                    if(_loc4_)
                                    {
                                       if(!(_loc4_ || param2))
                                       {
                                          break loop5;
                                       }
                                       this.§[1§(param1,param2);
                                    }
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                           return;
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr141);
                  }
               }
               §§goto(addr152);
            }
         }
         §§goto(addr90);
      }
      
      public function §3!P§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§6$§);
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
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop11:
                                 while(true)
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop13:
                                       while(!_loc3_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop14:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr260:
                                                   loop29:
                                                   while(true)
                                                   {
                                                      §§push(this.§6$§);
                                                      addr183:
                                                      while(true)
                                                      {
                                                         if(_loc3_ && param1)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§push(§@!`§);
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               while(_loc2_ || param1)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               continue loop29;
                                                               addr195:
                                                            }
                                                            else
                                                            {
                                                               addr242:
                                                            }
                                                            while(_loc2_ || _loc2_)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc2_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  continue loop11;
                                                               }
                                                               continue loop29;
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop18:
                                                      while(_loc2_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop20:
                                                               while(_loc2_ || _loc3_)
                                                               {
                                                                  §§push(param1);
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        while(_loc2_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!(_loc2_ || this))
                                                                           {
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(this.§'!O§ <= 0);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(_loc3_ && _loc3_)
                                                                                          {
                                                                                             continue loop22;
                                                                                          }
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                       loop24:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc3_ && param1))
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             if(_loc2_ || _loc2_)
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      break loop22;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(_loc2_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(this.§6$§);
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  if(_loc2_ || param1)
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(_loc3_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        §§push(!§§pop());
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr195);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§goto(addr192);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   §§goto(addr183);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr163);
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§6$§);
                                                                                          break loop23;
                                                                                       }
                                                                                       addr271:
                                                                                    }
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              addr77:
                                                                              return §§pop();
                                                                              addr176:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              addr163:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 continue loop17;
                                                                              }
                                                                              continue loop18;
                                                                           }
                                                                           if(_loc3_ && _loc3_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           §§goto(addr77);
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                     addr270:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                     }
                                                                     §§goto(addr271);
                                                                  }
                                                                  §§goto(addr162);
                                                               }
                                                               §§goto(addr260);
                                                            }
                                                         }
                                                         §§goto(addr77);
                                                      }
                                                      continue loop13;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              §§goto(addr270);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr260);
      }
      
      public function §#x§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§6$§);
            if(!(_loc1_ && _loc2_))
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc1_ && this))
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc1_)
                     {
                        §§push(§§pop());
                        if(_loc2_ || this)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           if(_loc2_)
                           {
                              addr80:
                              §§pop();
                              addr85:
                              addr83:
                              addr81:
                              §§push(this.§6$§ == §@!`§);
                              if(_loc1_)
                              {
                              }
                              §§goto(addr89);
                           }
                           §§push(Boolean(§§pop()));
                        }
                     }
                     addr89:
                     return §§pop();
                  }
                  §§goto(addr80);
               }
               §§goto(addr85);
            }
            §§goto(addr83);
         }
         §§goto(addr81);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
      
      public function doUserZoom(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§>'§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 addr301:
                                 while(true)
                                 {
                                    §§push(!§6f§.mReadyToRun);
                                    addr286:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr287:
                                       while(_loc2_)
                                       {
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§push(Boolean(§6f§.slingshot.mDragging));
                                    loop11:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc2_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       loop12:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                §§pop();
                                                addr280:
                                                while(true)
                                                {
                                                   §§push(Boolean(§6f§.camera.mDragging));
                                                   addr219:
                                                   while(!_loc3_)
                                                   {
                                                   }
                                                   continue loop13;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(this.§6$§);
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(§!$§);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc2_ || this)
                                                            {
                                                               if(_loc3_ && _loc3_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               if(!_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            loop19:
                                                            for(; !(_loc3_ && _loc3_); if(!(_loc2_ || _loc2_))
                                                            {
                                                               continue;
                                                            },§§goto(addr199),§§push(Boolean(§§pop())))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop26:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop19;
                                                                     }
                                                                     addr199:
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop31:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§goto(addr291);
                                                                                 }
                                                                                 addr94:
                                                                                 §§push(!§6f§.isPlayingReplay());
                                                                                 loop29:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       if(_loc3_ && param1)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                §6f§.camera.adjustManualScale(param1);
                                                                                                break;
                                                                                             }
                                                                                             addr223:
                                                                                             §§goto(addr24);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §6f§.changeReplaySpeed(param1);
                                                                                       if(_loc3_ && _loc2_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop31;
                                                                                       }
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr24);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(_loc2_)
                                                                                       {
                                                                                          if(!(_loc3_ && this))
                                                                                          {
                                                                                             continue loop26;
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                       }
                                                                                       addr256:
                                                                                       addr178:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§6$§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§[!J§);
                                                                                          addr153:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             addr154:
                                                                                             while(_loc2_ || _loc2_)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   if(!(_loc3_ && this))
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                }
                                                                                                §§goto(addr287);
                                                                                             }
                                                                                             §§goto(addr219);
                                                                                          }
                                                                                          addr212:
                                                                                          §§push(this.§6$§);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          §§push(§,![§);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(!(_loc2_ || this))
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                continue loop29;
                                                                                             }
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                while(!_loc3_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc3_ && this))
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         §§goto(addr212);
                                                                                                      }
                                                                                                      §§goto(addr280);
                                                                                                      break loop29;
                                                                                                   }
                                                                                                   if(_loc2_ || _loc2_)
                                                                                                   {
                                                                                                      §§goto(addr24);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr301);
                                                                                                   }
                                                                                                }
                                                                                                continue loop17;
                                                                                                addr200:
                                                                                             }
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             §§goto(addr154);
                                                                                          }
                                                                                          §§goto(addr153);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 if(_loc3_ && this)
                                                                                 {
                                                                                    §§goto(addr203);
                                                                                 }
                                                                                 §§goto(addr130);
                                                                              }
                                                                           }
                                                                           addr24:
                                                                           addr24:
                                                                           return;
                                                                        }
                                                                        addr90:
                                                                     }
                                                                     §§goto(addr200);
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr256);
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr223);
                                          }
                                       }
                                    }
                                 }
                              }
                              addr291:
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr280);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §<!X§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"!0§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Point = null;
         if(!_loc5_)
         {
            §§push(this.§>'§);
            if(!_loc5_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!_loc5_)
               {
                  return;
               }
            }
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         if(!_loc5_)
         {
            dispatchEvent(_loc3_);
            loop0:
            for(; !_loc3_.isDefaultPrevented(); if(_loc5_ && _loc3_)
            {
               continue;
            })
            {
               loop1:
               while(true)
               {
                  §§push(§'!6§.§=!J§());
                  loop2:
                  while(true)
                  {
                     §§pop();
                     while(_loc6_)
                     {
                        §§push(this.§3!P§(false));
                        loop4:
                        for(; !§§pop(); if(_loc5_ && param2)
                        {
                           continue;
                        },if(§§pop())
                        {
                           if(!(_loc5_ && this))
                           {
                              §§goto(addr212);
                              §§push(Boolean(§6f§.activeObject));
                           }
                           §§goto(addr216);
                        },§§goto(addr336))
                        {
                           loop5:
                           while(true)
                           {
                              §§push(!§6f§.isPlayingReplay());
                              if(_loc6_ || this)
                              {
                                 continue loop4;
                              }
                              addr212:
                              loop10:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop11:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop12:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             §§pop();
                                             addr216:
                                             loop6:
                                             while(_loc6_)
                                             {
                                                §§push(this.§6$§ == §2a§);
                                                while(!(_loc5_ && param2))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc6_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            if(!(_loc6_ || param1))
                                                            {
                                                               continue loop11;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               if(_loc5_ && param1)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(this.§=f§);
                                                               if(!_loc5_)
                                                               {
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        continue;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                            }
                                                            addr349:
                                                            return;
                                                            addr171:
                                                         }
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            this.§=f§ = false;
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               §6f§.activatePowerup();
                                                               if(_loc6_ || param1)
                                                               {
                                                                  return;
                                                               }
                                                               break loop0;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr345:
                                                            §6f§.resetReplaySpeed();
                                                         }
                                                         §§goto(addr349);
                                                      }
                                                      else
                                                      {
                                                         _loc4_ = §6f§.screenToBox2D(param1,param2);
                                                         if(_loc6_ || param1)
                                                         {
                                                            if(!§6f§.slingshot.canStartDragging(_loc4_))
                                                            {
                                                               §6f§.camera.startDragging(param1,param2);
                                                               if(!(_loc6_ || this))
                                                               {
                                                                  this.§[1§(§,![§);
                                                                  addr335:
                                                               }
                                                               return;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               §6f§.slingshot.startDragging();
                                                            }
                                                            §§goto(addr335);
                                                         }
                                                         else if(true)
                                                         {
                                                            break loop5;
                                                         }
                                                         §§goto(addr335);
                                                      }
                                                   }
                                                   §§goto(addr171);
                                                }
                                                continue loop2;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       §§goto(addr146);
                                    }
                                 }
                              }
                           }
                           §6f§.camera.startDragging(param1,param2);
                           if(_loc6_)
                           {
                              §§goto(addr345);
                           }
                           §§goto(addr349);
                        }
                        if(!_loc5_)
                        {
                           return;
                        }
                     }
                     continue loop0;
                  }
                  addr248:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            return;
         }
         §§goto(addr248);
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(_loc4_ || param2)
         {
            §§push(this.§>'§);
            if(!(_loc5_ && _loc3_))
            {
               §§push(!§§pop());
               if(!_loc5_)
               {
                  if(!§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§push(§'!6§.§^!]§());
                        if(!(_loc5_ && param1))
                        {
                           §§pop();
                           if(!(_loc5_ && _loc3_))
                           {
                              if(_loc5_ && this)
                              {
                                 §§goto(addr89);
                              }
                              if(this.§6$§ == §?!R§)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    this.§[1§(§,![§);
                                    addr278:
                                    if(_loc4_)
                                    {
                                       while(false)
                                       {
                                          continue loop0;
                                       }
                                       addr47:
                                    }
                                    while(true)
                                    {
                                       §6f§.camera.dragToNewPoint(param1,param2);
                                       addr285:
                                       while(true)
                                       {
                                          §§goto(addr239);
                                       }
                                    }
                                    addr278:
                                 }
                                 §§goto(addr278);
                              }
                              if(§6f§.slingshot.mDragging)
                              {
                                 if(_loc4_)
                                 {
                                    _loc3_ = §6f§.screenToBox2D(param1,param2);
                                    if(!(_loc5_ && param1))
                                    {
                                       §6f§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                                       while(true)
                                       {
                                          if(!§6f§.slingshot.canShootTheBird())
                                          {
                                             §6f§.slingshot.cancelDragging();
                                             if(!_loc5_)
                                             {
                                                if(!(_loc4_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(false)
                                                {
                                                   addr149:
                                                   this.§[1§(§2a§);
                                                   break;
                                                }
                                                if(§6f§.camera.mDragging)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      addr200:
                                                      §§push(!isNaN(param1));
                                                      if(_loc4_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr277);
                                                         }
                                                         break loop0;
                                                      }
                                                      break loop0;
                                                   }
                                                   §§push(!isNaN(param2));
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr276);
                                                   }
                                                   addr277:
                                                   §§push(§§pop());
                                                   if(_loc4_ || param1)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         break loop0;
                                                      }
                                                      addr276:
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr278);
                                                   }
                                                   addr239:
                                                   addr236:
                                                   while(true)
                                                   {
                                                      §6f§.camera.stopDragging();
                                                      if(_loc4_ || this)
                                                      {
                                                         continue loop2;
                                                      }
                                                      continue loop4;
                                                   }
                                                   addr269:
                                                   return;
                                                   addr234:
                                                }
                                                §§goto(addr236);
                                             }
                                          }
                                          if(!(_loc5_ && this))
                                          {
                                             §6f§.slingshot.shoot();
                                          }
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr200);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr278);
                        }
                        break;
                     }
                     §§pop();
                     if(!(_loc5_ && _loc3_))
                     {
                        §§goto(addr234);
                     }
                     §§goto(addr285);
                  }
                  addr89:
                  return;
               }
               §§goto(addr277);
            }
            §§goto(addr276);
         }
         §§goto(addr47);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(!(_loc4_ && param1))
         {
            §§push(this.§>'§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!(_loc4_ && _loc3_))
               {
                  return;
               }
               addr65:
               _loc3_ = §6f§.screenToBox2D(param1,param2);
               if(_loc5_)
               {
                  §6f§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                  if(!_loc4_)
                  {
                     addr116:
                     this.§&!]§ = param1;
                     if(_loc5_)
                     {
                        addr121:
                        this.§=!A§ = param2;
                     }
                  }
                  return;
               }
               §§goto(addr121);
            }
            else
            {
               addr58:
               if(§6f§.slingshot.mDragging)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr65);
                  }
                  else
                  {
                     addr109:
                     §6f§.camera.dragToNewPoint(param1,param2);
                  }
               }
               else if(§6f§.camera.mDragging)
               {
                  if(!(_loc4_ && param2))
                  {
                     §§goto(addr109);
                  }
               }
            }
            §§goto(addr116);
         }
         §§goto(addr58);
      }
      
      public function §'!K§() : Point
      {
         return new Point(this.§&!]§,this.§=!A§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%a§.assign(this.§%a§.getValue() + param1);
            while(true)
            {
               this.§ !H§(§-!_§);
            }
            addr94:
         }
         loop1:
         while(this.§6$§ == §!$§)
         {
            loop2:
            do
            {
               if(!(_loc3_ || _loc2_))
               {
                  continue loop1;
               }
               this.§'!O§ = 2000;
               while(!_loc2_)
               {
                  this.§2!f§ = §7e§;
                  if(_loc3_ || _loc3_)
                  {
                     continue loop2;
                  }
               }
               §§goto(addr94);
            }
            while(!_loc3_);
            
            break;
         }
      }
      
      override public function getScore() : int
      {
         return this.§%a§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(§4!T§.§1t§.objects.mMightyEagleAdded);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!(_loc4_ && this))
               {
                  §§push(0);
                  if(_loc3_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr63:
                  §§push(LevelManager.§<l§(LevelManager.§!=§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
         }
         §§goto(addr63);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§>'§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>'§ = param1;
         }
      }
   }
}
