package §;u§
{
   import §%i§.§0!Y§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §-p§.§&h§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9@§.§+"Z§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §5!+§ extends §+d§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
      
      private static var §;"Y§:BitmapData = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            STATE_NAME = "LevelStartState";
            do
            {
               §;"Y§ = null;
            }
            while(!_loc1_);
            
         }
      }
      
      private var §8!w§:Boolean = false;
      
      private var §;"'§:Boolean = false;
      
      private var §<!3§:§&h§ = null;
      
      private var §1-§:Boolean = false;
      
      private var §]!K§:Boolean = false;
      
      private var §4"§:Number = 0;
      
      private var §?!2§:Number = 0;
      
      private var § x§:Number = 0;
      
      private var §3"D§:Number = 0;
      
      private var §"j§:Number;
      
      private var §3!>§:Number;
      
      private var §5!g§:Number;
      
      private var §%E§:Number;
      
      private var §@!t§:§+"Z§;
      
      public function §5!+§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public static function get §0"6§() : BitmapData
      {
         return §;"Y§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               §2"@§ = new §`_§(this);
               while(true)
               {
                  §2"@§.init(§ "<§.§%I§.Views.View_LevelStart[0]);
                  while(true)
                  {
                     this.§<!3§ = new §&h§(§?l§.§'h§);
                     addr116:
                     while(!_loc1_)
                     {
                        continue loop0;
                     }
                  }
                  addr91:
                  loop4:
                  for(; !(_loc1_ && this); loop6:
                  while(!(_loc1_ && _loc2_))
                  {
                     while(true)
                     {
                        this.§%E§ = §2"@§.getItemByName("Button_RightMenuOpen").y - 50;
                        if(!_loc2_)
                        {
                           continue loop6;
                        }
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           §§goto(addr116);
                        }
                        else
                        {
                           §§goto(addr81);
                        }
                     }
                     return;
                  })
                  {
                     this.§3!>§ = (§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).height;
                     while(true)
                     {
                        this.§5!g§ = §2"@§.getItemByName("Button_LeftMenuOpen").y - 50;
                        continue loop4;
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §?l§.§'h§.§#"[§(true);
               loop1:
               while(true)
               {
                  §?l§.setController(this.§<!3§);
                  while(true)
                  {
                     this.§<!3§.init();
                     addr110:
                     while(_loc2_ || _loc2_)
                     {
                        this.playThemeMusic();
                        continue loop0;
                     }
                  }
                  addr77:
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  §2"@§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§?l§.§'!R§());
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     addr70:
                     while(true)
                     {
                        if(_loc1_ && _loc2_)
                        {
                           continue loop0;
                        }
                        §§goto(addr77);
                     }
                     continue loop1;
                  }
                  §§goto(addr110);
               }
            }
         }
         §§goto(addr38);
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() == §+d§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     this.§5!g§ = §2"@§.getItemByName("Button_LeftMenuOpen").y - 50;
                     loop1:
                     while(true)
                     {
                        this.§%E§ = §2"@§.getItemByName("Button_RightMenuOpen").y - 50;
                        addr130:
                        loop2:
                        while(true)
                        {
                           this.§;K§(param1);
                           loop3:
                           while(_loc3_ || this)
                           {
                              if(!this.§;"'§)
                              {
                                 while(!(_loc4_ && param1))
                                 {
                                    §?l§.§5-§.update(param1);
                                    while(true)
                                    {
                                    }
                                 }
                                 continue loop0;
                                 addr87:
                              }
                              for(; mNextState.length > 0; §§goto(addr98))
                              {
                                 if(!_loc4_)
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       if(!_loc4_)
                                       {
                                          return §+d§.STATE_STATUS_COMPLETED;
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                    continue loop3;
                                 }
                                 if(_loc4_)
                                 {
                                    continue;
                                 }
                                 if(!_loc4_)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       break;
                                    }
                                    addr147:
                                    return _loc2_;
                                 }
                                 §§goto(addr87);
                              }
                              return §+d§.STATE_STATUS_RUNNING;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            §§goto(addr147);
         }
         §§goto(addr130);
      }
      
      private function §;K§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            (§2"@§.getItemByName("Container_MenuLeftButtons") as §0!Y§).mClip.scrollRect = new Rectangle(0,0,(§2"@§.getItemByName("Container_MenuLeftButtons") as §0!Y§).width,this.§"j§ + 20 - (this.§"j§ - this.§ x§));
            loop0:
            while(true)
            {
               (§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).mClip.scrollRect = new Rectangle(0,0,(§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).width,this.§3!>§ + 20 - (this.§3!>§ - this.§3"D§));
               loop1:
               while(true)
               {
                  §§push(this.§1-§);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        continue loop0;
                     }
                     §§push(this.§4"§);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        loop4:
                        while(true)
                        {
                           if(§§pop() > §§pop())
                           {
                              addr689:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§4"§);
                                 if(_loc2_)
                                 {
                                    addr694:
                                    §§push(0.3);
                                    if(!(_loc3_ && param1))
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§push(§§pop() - §§pop());
                                 }
                                 addr705:
                                 §§pop().§4"§ = §§pop();
                                 addr706:
                                 while(true)
                                 {
                                 }
                              }
                              addr689:
                           }
                           while(true)
                           {
                              §§push(this.§4"§);
                              loop8:
                              while(true)
                              {
                                 §§push(0);
                                 loop9:
                                 while(_loc2_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       continue loop1;
                                    }
                                    loop62:
                                    while(true)
                                    {
                                       §§push(this.§ x§);
                                       loop63:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop64:
                                          while(true)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                loop65:
                                                while(true)
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§ x§);
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         §§push(0.5);
                                                         if(_loc2_)
                                                         {
                                                            §§push(§§pop() * param1);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      §§pop().§ x§ = §§pop();
                                                      loop66:
                                                      while(true)
                                                      {
                                                         addr598:
                                                         while(true)
                                                         {
                                                            §§push(this.§ x§);
                                                            loop68:
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               loop69:
                                                               while(true)
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     loop70:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr605:
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              (§2"@§.getItemByName("Container_MenuLeftButtons") as §0!Y§).setVisibility(false);
                                                                              loop71:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_ || _loc3_)
                                                                                 {
                                                                                    this.§ x§ = 0;
                                                                                    loop72:
                                                                                    while(true)
                                                                                    {
                                                                                       addr575:
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§]!K§);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                (§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).setVisibility(true);
                                                                                             }
                                                                                             while(_loc2_)
                                                                                             {
                                                                                                §§push(this.§?!2§);
                                                                                             }
                                                                                             loop77:
                                                                                             while(true)
                                                                                             {
                                                                                                loop78:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§4"§);
                                                                                                   addr749:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(90);
                                                                                                      addr750:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() > §§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§4"§ = 90;
                                                                                                               addr754:
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            addr751:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§ x§);
                                                                                                            addr723:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc2_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(this.§"j§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop() < §§pop())
                                                                                                                     {
                                                                                                                        loop86:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this);
                                                                                                                           §§push(this.§ x§);
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              §§push(0.5);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * param1);
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                           }
                                                                                                                           §§pop().§ x§ = §§pop();
                                                                                                                           addr745:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop86;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr733:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§ x§);
                                                                                                                        addr710:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§"j§);
                                                                                                                           addr712:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop() > §§pop())
                                                                                                                              {
                                                                                                                                 while(_loc2_)
                                                                                                                                 {
                                                                                                                                    this.§ x§ = this.§"j§;
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr605);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(this.§4"§);
                                                                                                                                    if(_loc2_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(0.3);
                                                                                                                                       if(!(_loc3_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * param1);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    §§pop().§4"§ = §§pop();
                                                                                                                                    continue loop77;
                                                                                                                                 }
                                                                                                                                 addr760:
                                                                                                                                 addr713:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr732:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  loop74:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(90);
                                                                                                                     addr759:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                        {
                                                                                                                           continue loop78;
                                                                                                                        }
                                                                                                                        continue loop74;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr758:
                                                                                                               }
                                                                                                               §§goto(addr760);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr590:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(this.§?!2§);
                                                                                             loop61:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   continue loop8;
                                                                                                }
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      continue loop68;
                                                                                                   }
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      continue loop63;
                                                                                                   }
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr381:
                                                                                                      loop50:
                                                                                                      for(; _loc2_ || this; §§goto(addr381))
                                                                                                      {
                                                                                                         if(§§pop() > §§pop())
                                                                                                         {
                                                                                                            loop51:
                                                                                                            for(; _loc2_ || _loc3_; while(true)
                                                                                                            {
                                                                                                               if(!(_loc2_ || this))
                                                                                                               {
                                                                                                                  continue loop51;
                                                                                                               }
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                  {
                                                                                                                     this.§?!2§ = 0;
                                                                                                                     §§goto(addr336);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr512:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§?!2§ = 180;
                                                                                                               }
                                                                                                               §§goto(addr515);
                                                                                                            },§§goto(addr713))
                                                                                                            {
                                                                                                               §§push(this);
                                                                                                               §§push(this.§?!2§);
                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(0.5);
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * param1);
                                                                                                                  }
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                               }
                                                                                                               §§pop().§?!2§ = §§pop();
                                                                                                               addr414:
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  continue loop70;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  (§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).y = (§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).y + 0.5 * param1;
                                                                                                                  loop57:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        continue loop72;
                                                                                                                     }
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        continue loop65;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§?!2§);
                                                                                                                        addr299:
                                                                                                                        loop53:
                                                                                                                        for(; !(_loc3_ && _loc3_); while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc2_ || param1))
                                                                                                                           {
                                                                                                                              continue loop53;
                                                                                                                           }
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              continue loop61;
                                                                                                                           }
                                                                                                                           §§goto(addr271);
                                                                                                                           §§push(0);
                                                                                                                        },continue loop68)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           loop54:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc3_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop64;
                                                                                                                                    }
                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                    {
                                                                                                                                       loop23:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this);
                                                                                                                                          §§push(this.§?!2§);
                                                                                                                                          if(!(_loc3_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(0.5);
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * param1);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                          §§pop().§?!2§ = §§pop();
                                                                                                                                          loop24:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             (§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).y = (§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).y - 0.5 * param1;
                                                                                                                                             while(!_loc3_)
                                                                                                                                             {
                                                                                                                                                addr195:
                                                                                                                                                if(_loc3_ && param1)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   continue loop24;
                                                                                                                                                }
                                                                                                                                                if(_loc3_ && _loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop0;
                                                                                                                                                }
                                                                                                                                                loop41:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   (§2"@§.getItemByName("Button_LeftMenuOpen") as §7"0§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                                                                                   loop42:
                                                                                                                                                   while(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc2_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_ || param1)
                                                                                                                                                         {
                                                                                                                                                            (§2"@§.getItemByName("Button_RightMenuOpen") as §7"0§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                                                                                            loop43:
                                                                                                                                                            for(; !(_loc3_ && _loc3_); if(_loc3_ && param1)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            },§§goto(addr98))
                                                                                                                                                            {
                                                                                                                                                               (§2"@§.getItemByName("Button_LeftMenuOpen") as §7"0§).mClip.MovieClip_LeftMenuImage.rotation = this.§4"§;
                                                                                                                                                               loop44:
                                                                                                                                                               while(_loc2_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  (§2"@§.getItemByName("Button_RightMenuOpen") as §7"0§).mClip.MovieClip_RightMenuImage.rotation = this.§?!2§;
                                                                                                                                                                  loop45:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§2"@§.getItemByName("Container_MenuLeftButtons") as §0!Y§);
                                                                                                                                                                     §§push(this.§5!g§);
                                                                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - this.§ x§);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc3_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop43;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop44;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§);
                                                                                                                                                                        addr105:
                                                                                                                                                                        §§push(this.§%E§);
                                                                                                                                                                        continue loop45;
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - this.§3"D§);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop42;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc3_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc2_ || _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop23;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc2_ || this))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop66;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§3"D§);
                                                                                                                                                                                    break loop53;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop24;
                                                                                                                                                                              addr515:
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              return;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr751);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr414);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr495:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        addr417:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§3"D§);
                                                                                                                                                                           continue loop3;
                                                                                                                                                                        }
                                                                                                                                                                        addr98:
                                                                                                                                                                        if(!(_loc2_ || param1))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr105);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     this.§3"D§ = 0;
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop51;
                                                                                                                                                               }
                                                                                                                                                               loop60:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this);
                                                                                                                                                                  §§push(this.§3"D§);
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0.5);
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * param1);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().§3"D§ = §§pop();
                                                                                                                                                                  addr286:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§3"D§);
                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop53;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           if(_loc3_ && param1)
                                                                                                                                                                           {
                                                                                                                                                                              while(!_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop54;
                                                                                                                                                                              }
                                                                                                                                                                              continue;
                                                                                                                                                                              addr271:
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc2_ || param1))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop50;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() < §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 break loop42;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop41;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr750);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop60;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop57;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop1;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            if(_loc3_ && _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr286);
                                                                                                                                                            }
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr195);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  this.§3"D§ = this.§3!>§;
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr359:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop41;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr706);
                                                                                                                                                               addr458:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this);
                                                                                                                                                            §§push(this.§3"D§);
                                                                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(0.5);
                                                                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * param1);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().§3"D§ = §§pop();
                                                                                                                                                            §§goto(addr495);
                                                                                                                                                         }
                                                                                                                                                         addr473:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr336:
                                                                                                                                                         §§goto(addr258);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc2_ || _loc2_))
                                                                                                                                                         {
                                                                                                                                                            continue loop71;
                                                                                                                                                         }
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            (§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).setVisibility(false);
                                                                                                                                                            §§goto(addr253);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr733);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr464);
                                                                                                                                                   }
                                                                                                                                                   continue loop71;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr590);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§?!2§);
                                                                                                                                       continue loop8;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop64;
                                                                                                                                 addr549:
                                                                                                                              }
                                                                                                                              if(!(_loc2_ || _loc2_))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(§§pop() < §§pop())
                                                                                                                              {
                                                                                                                                 continue loop51;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§3"D§);
                                                                                                                                 continue loop53;
                                                                                                                              }
                                                                                                                              addr258:
                                                                                                                           }
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                        while(_loc2_)
                                                                                                                        {
                                                                                                                           §§push(this.§3!>§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop() < §§pop())
                                                                                                                              {
                                                                                                                                 §§goto(addr473);
                                                                                                                              }
                                                                                                                              §§goto(addr417);
                                                                                                                              addr439:
                                                                                                                              §§push(this.§3!>§);
                                                                                                                              if(_loc3_ && _loc2_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                    {
                                                                                                                                       §§goto(addr458);
                                                                                                                                    }
                                                                                                                                    §§goto(addr359);
                                                                                                                                 }
                                                                                                                                 §§goto(addr732);
                                                                                                                              }
                                                                                                                              §§goto(addr712);
                                                                                                                           }
                                                                                                                           §§goto(addr299);
                                                                                                                        }
                                                                                                                        §§goto(addr723);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop72;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr754);
                                                                                                         }
                                                                                                         §§goto(addr296);
                                                                                                      }
                                                                                                      §§push(0);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            continue loop69;
                                                                                                         }
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(§§pop() > §§pop())
                                                                                                            {
                                                                                                               §§goto(addr512);
                                                                                                            }
                                                                                                            §§goto(addr465);
                                                                                                         }
                                                                                                         §§goto(addr759);
                                                                                                         §§goto(addr382);
                                                                                                      }
                                                                                                      addr382:
                                                                                                      continue loop69;
                                                                                                      addr507:
                                                                                                   }
                                                                                                   §§goto(addr749);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr549);
                                                                                             §§goto(addr368);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr689);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr801:
                                                                                 }
                                                                                 §§goto(addr758);
                                                                              }
                                                                           }
                                                                           §§goto(addr719);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr689);
                                                                        }
                                                                     }
                                                                     §§goto(addr705);
                                                                  }
                                                                  §§goto(addr575);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            continue loop62;
                                                         }
                                                         continue loop65;
                                                      }
                                                      addr674:
                                                   }
                                                   §§goto(addr745);
                                                }
                                             }
                                             §§goto(addr598);
                                          }
                                       }
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr416);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§2"@§.getItemByName("Button_Play") as §7"0§).setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
            while(true)
            {
               this.§8!w§ = false;
               §§goto(addr46);
            }
         }
         addr46:
         while(true)
         {
            super.deActivate();
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(!_loc8_)
         {
            §§push("OPEN_LEFT_MENU");
            if(!(_loc8_ && param2))
            {
               §§push(_loc6_);
               if(!_loc8_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc7_)
                     {
                        §§push(0);
                        if(!_loc7_)
                        {
                           addr685:
                        }
                     }
                     else
                     {
                        addr591:
                        §§push(8);
                        if(_loc7_)
                        {
                           addr594:
                        }
                        else
                        {
                           addr645:
                        }
                     }
                  }
                  else
                  {
                     §§push("OPEN_RIGHT_MENU");
                     if(_loc7_)
                     {
                        §§push(_loc6_);
                        if(!_loc8_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc8_)
                              {
                                 addr420:
                                 §§push(1);
                                 if(!(_loc7_ || this))
                                 {
                                    addr571:
                                 }
                                 §§goto(addr690);
                              }
                              else
                              {
                                 addr476:
                                 §§push(3);
                                 if(_loc7_ || param2)
                                 {
                                    §§goto(addr690);
                                 }
                                 else
                                 {
                                    §§goto(addr594);
                                 }
                              }
                              §§goto(addr690);
                           }
                           else
                           {
                              §§push("PLAY_LEVEL");
                              if(_loc7_ || param2)
                              {
                                 addr437:
                                 §§push(_loc6_);
                                 if(_loc7_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc7_ || param1)
                                       {
                                          §§push(2);
                                          if(!(_loc7_ || this))
                                          {
                                             addr502:
                                          }
                                          §§goto(addr690);
                                       }
                                       else
                                       {
                                          §§goto(addr476);
                                       }
                                    }
                                    else
                                    {
                                       §§push("OPEN_MENU");
                                       if(!_loc8_)
                                       {
                                          §§push(_loc6_);
                                          if(_loc7_ || param1)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc7_ || param1)
                                                {
                                                   §§goto(addr476);
                                                }
                                                else
                                                {
                                                   addr499:
                                                   §§push(4);
                                                   if(!_loc8_)
                                                   {
                                                      §§goto(addr502);
                                                   }
                                                   else
                                                   {
                                                      addr617:
                                                      §§goto(addr690);
                                                   }
                                                }
                                                §§goto(addr690);
                                             }
                                             else
                                             {
                                                §§push("OPEN_AVATAR_CREATOR");
                                                if(_loc7_)
                                                {
                                                   §§push(_loc6_);
                                                   if(!(_loc8_ && param3))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §§goto(addr499);
                                                         }
                                                         else
                                                         {
                                                            addr545:
                                                            §§push(6);
                                                            if(!_loc8_)
                                                            {
                                                               §§goto(addr690);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr685);
                                                            }
                                                         }
                                                         §§goto(addr690);
                                                      }
                                                      else
                                                      {
                                                         §§push("TOGGLE_SOUNDS");
                                                         if(_loc7_)
                                                         {
                                                            addr506:
                                                            §§push(_loc6_);
                                                            if(_loc7_ || param1)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     §§push(5);
                                                                     if(!_loc7_)
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr690);
                                                               }
                                                               else
                                                               {
                                                                  §§push("TOGGLE_PARTICLES");
                                                                  if(!(_loc8_ && param2))
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(_loc7_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc8_ && param3))
                                                                           {
                                                                              §§goto(addr545);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr642:
                                                                              §§push(10);
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§goto(addr645);
                                                                              }
                                                                              §§goto(addr690);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("FULLSCREEN_BUTTON");
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc8_ && param2))
                                                                                    {
                                                                                       §§push(7);
                                                                                       if(_loc7_ || param2)
                                                                                       {
                                                                                          §§goto(addr571);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr685);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr670:
                                                                                       §§push(11);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr690);
                                                                                    }
                                                                                    §§goto(addr690);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push("OPEN_CREDITS");
                                                                                    if(_loc7_ || param3)
                                                                                    {
                                                                                       addr580:
                                                                                       §§push(_loc6_);
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§goto(addr591);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr614:
                                                                                                §§push(9);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§goto(addr617);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr685);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr690);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push("CREDITS_BUTTON");
                                                                                             if(_loc7_ || param1)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   addr606:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(!(_loc8_ && this))
                                                                                                      {
                                                                                                         §§goto(addr614);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr642);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push("SOUNDS_BUTTON");
                                                                                                      if(!(_loc8_ && param3))
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         if(!(_loc8_ && param2))
                                                                                                         {
                                                                                                            addr634:
                                                                                                            if(§§pop() === §§pop())
                                                                                                            {
                                                                                                               if(!(_loc8_ && param3))
                                                                                                               {
                                                                                                                  §§goto(addr642);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr677:
                                                                                                                  §§push(12);
                                                                                                                  if(!(_loc8_ && this))
                                                                                                                  {
                                                                                                                     §§goto(addr685);
                                                                                                                  }
                                                                                                                  §§goto(addr690);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push("POPUP_CREDITS_CLOSE");
                                                                                                               if(_loc7_ || param2)
                                                                                                               {
                                                                                                                  addr664:
                                                                                                                  §§push(_loc6_);
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     addr667:
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           §§goto(addr670);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr677);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push("ME_POPUP_VIDEO");
                                                                                                                     }
                                                                                                                     §§goto(addr677);
                                                                                                                  }
                                                                                                                  if(§§pop() === §§pop())
                                                                                                                  {
                                                                                                                     §§goto(addr677);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr690:
                                                                                                                     loop10:
                                                                                                                     switch(§§pop())
                                                                                                                     {
                                                                                                                        case 0:
                                                                                                                           addr379:
                                                                                                                           if(this.§1-§)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 this.§1-§ = false;
                                                                                                                              }
                                                                                                                              addr385:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              this.§1-§ = true;
                                                                                                                              addr374:
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        case 1:
                                                                                                                           addr363:
                                                                                                                           if(this.§]!K§)
                                                                                                                           {
                                                                                                                              addr364:
                                                                                                                              this.§]!K§ = false;
                                                                                                                              addr367:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              this.§]!K§ = true;
                                                                                                                              addr357:
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        case 2:
                                                                                                                           §@"M§.§3"C§("Menu_Confirm");
                                                                                                                           addr333:
                                                                                                                           if(_loc7_ || param1)
                                                                                                                           {
                                                                                                                              mNextState = §9!V§.STATE_NAME;
                                                                                                                              break;
                                                                                                                              addr326:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr385);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        case 3:
                                                                                                                           §2"@§.setItemVisibility("Container_MenuButtons",!§2"@§.getItemByName("Container_MenuButtons").visible);
                                                                                                                           break;
                                                                                                                           addr320:
                                                                                                                        case 4:
                                                                                                                           break;
                                                                                                                        case 5:
                                                                                                                           break;
                                                                                                                        case 6:
                                                                                                                           addr299:
                                                                                                                           §§push(§?l§.§'!R§());
                                                                                                                           if(!(_loc8_ && param1))
                                                                                                                           {
                                                                                                                              addr307:
                                                                                                                              _loc4_ = !§§pop();
                                                                                                                              §?l§.§%"7§(_loc4_);
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 §2"@§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                                                                                                                                 break;
                                                                                                                                 addr282:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr333);
                                                                                                                              }
                                                                                                                              addr308:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr379);
                                                                                                                           }
                                                                                                                           §§goto(addr379);
                                                                                                                        case 7:
                                                                                                                           §@"M§.§3"C§("Menu_Confirm");
                                                                                                                           addr272:
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              AngryBirdsFP11.§>m§.§=-§();
                                                                                                                              break;
                                                                                                                              addr265:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr282);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        case 8:
                                                                                                                           §@"M§.§3"C§("Menu_Confirm");
                                                                                                                           break;
                                                                                                                           addr260:
                                                                                                                        case 9:
                                                                                                                           §@"M§.§3"C§("Menu_Confirm");
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 mNextState = §&"[§.STATE_NAME;
                                                                                                                                 if(!(_loc8_ && param1))
                                                                                                                                 {
                                                                                                                                    this.§1-§ = false;
                                                                                                                                    break;
                                                                                                                                    addr229:
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr265);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        case 10:
                                                                                                                           §@"M§.§3"C§("Menu_Confirm");
                                                                                                                           loop0:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    if(_loc7_ || param1)
                                                                                                                                    {
                                                                                                                                       if(_loc7_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(AngryBirdsFP11.§6!,§());
                                                                                                                                          loop1:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(!§§pop());
                                                                                                                                             loop2:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc5_ = §§pop();
                                                                                                                                                addr195:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      continue loop0;
                                                                                                                                                   }
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   AngryBirdsFP11.§]"H§(_loc5_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc8_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         if(!(_loc8_ && param3))
                                                                                                                                                         {
                                                                                                                                                            continue loop1;
                                                                                                                                                         }
                                                                                                                                                         continue loop2;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr229);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr357);
                                                                                                                                             }
                                                                                                                                             §§goto(addr307);
                                                                                                                                          }
                                                                                                                                          §§goto(addr122);
                                                                                                                                       }
                                                                                                                                       §§goto(addr326);
                                                                                                                                    }
                                                                                                                                    §§goto(addr308);
                                                                                                                                 }
                                                                                                                                 §§goto(addr307);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr260);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        case 11:
                                                                                                                           break;
                                                                                                                        case 12:
                                                                                                                           if(this.§@!t§ == null)
                                                                                                                           {
                                                                                                                              loop4:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§@!t§ = new §+"Z§("http://www.youtube.com/v/-eyig_V-_5o");
                                                                                                                                 loop5:
                                                                                                                                 while(_loc7_)
                                                                                                                                 {
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          (§2"@§.getItemByName("MovieClip_YouTubeArea") as §^n§).changeMovieClip(this.§@!t§);
                                                                                                                                          if(_loc7_ || this)
                                                                                                                                          {
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             if(!(_loc8_ && param3))
                                                                                                                                             {
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc8_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(_loc7_ || param1)
                                                                                                                                                      {
                                                                                                                                                         (§2"@§.getItemByName("MovieClip_YouTubeArea") as §^n§).setVisibility(true);
                                                                                                                                                         if(!(_loc8_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               continue loop5;
                                                                                                                                                            }
                                                                                                                                                            if(_loc7_ || param2)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc8_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc8_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     if(true)
                                                                                                                                                                     {
                                                                                                                                                                        break loop10;
                                                                                                                                                                     }
                                                                                                                                                                     addr386:
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr374);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr272);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         break loop10;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr364);
                                                                                                                                                      §§goto(addr367);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr320);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr182);
                                                                                                                                                }
                                                                                                                                                §§goto(addr379);
                                                                                                                                             }
                                                                                                                                             §§goto(addr129);
                                                                                                                                          }
                                                                                                                                          break loop10;
                                                                                                                                       }
                                                                                                                                       continue loop4;
                                                                                                                                    }
                                                                                                                                    §§goto(addr168);
                                                                                                                                 }
                                                                                                                                 §§goto(addr170);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr386);
                                                                                                                     }
                                                                                                                     return;
                                                                                                                     §§push(13);
                                                                                                                  }
                                                                                                                  §§goto(addr690);
                                                                                                               }
                                                                                                               §§push(_loc6_);
                                                                                                            }
                                                                                                            §§goto(addr677);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr664);
                                                                                                   }
                                                                                                   §§goto(addr690);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr664);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr606);
                                                                                    }
                                                                                    §§goto(addr664);
                                                                                 }
                                                                              }
                                                                              §§goto(addr664);
                                                                           }
                                                                           §§goto(addr580);
                                                                        }
                                                                        §§goto(addr690);
                                                                     }
                                                                     §§goto(addr606);
                                                                  }
                                                                  §§goto(addr580);
                                                               }
                                                            }
                                                            §§goto(addr634);
                                                         }
                                                      }
                                                      §§goto(addr690);
                                                   }
                                                   §§goto(addr606);
                                                }
                                                §§goto(addr664);
                                             }
                                          }
                                          §§goto(addr634);
                                       }
                                       §§goto(addr580);
                                    }
                                    §§goto(addr690);
                                 }
                                 §§goto(addr606);
                              }
                              §§goto(addr580);
                           }
                        }
                        §§goto(addr667);
                     }
                     §§goto(addr437);
                  }
                  §§goto(addr690);
               }
               §§goto(addr667);
            }
            §§goto(addr506);
         }
         §§goto(addr420);
      }
   }
}
