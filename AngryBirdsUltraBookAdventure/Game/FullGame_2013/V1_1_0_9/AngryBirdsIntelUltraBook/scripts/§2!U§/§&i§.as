package §2!U§
{
   import §2y§.§7!p§;
   import §2y§.§[!i§;
   import §2y§.§^! §;
   import §48§.§>6§;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §<-§.§"!=§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §[!b§.§-!Q§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §&i§ extends §9![§
   {
      
      public static const §'!q§:String = "LevelStartState";
      
      private static var §?!§:BitmapData = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §'!q§ = "LevelStartState";
         }
         do
         {
            §?!§ = null;
         }
         while(!_loc2_);
         
      }
      
      private var §9!d§:Boolean = false;
      
      private var §#!j§:Boolean = false;
      
      private var §0! §:§>6§ = null;
      
      private var §6!z§:Boolean = false;
      
      private var §"!y§:Boolean = false;
      
      private var §"`§:Number = 0;
      
      private var § !Y§:Number = 0;
      
      private var §]!c§:Number = 0;
      
      private var §&!?§:Number = 0;
      
      private var §;P§:Number;
      
      private var §?!E§:Number;
      
      private var §;5§:Number;
      
      private var §?!B§:Number;
      
      private var §,Y§:§"!=§;
      
      public function §&i§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public static function get §%!S§() : BitmapData
      {
         return §?!§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            while(true)
            {
               §'!Q§ = new §&!G§(this);
               loop1:
               for(; _loc2_ || _loc2_; if(_loc1_ && this)
               {
                  continue;
               },this.§;5§ = §'!Q§.getItemByName("Button_LeftMenuOpen").y - 50,for(; !_loc1_; this.§?!B§ = §'!Q§.getItemByName("Button_RightMenuOpen").y - 50,if(_loc1_ && _loc2_)
               {
                  continue;
               },§§goto(addr40))
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr118);
               },§§goto(addr81))
               {
                  while(true)
                  {
                     §'!Q§.init(§2!z§.§ _§.Views.View_LevelStart[0]);
                     loop3:
                     while(true)
                     {
                        this.§0! § = new §>6§(§,!s§.§=!I§);
                        addr118:
                        while(true)
                        {
                           this.§;P§ = (§'!Q§.getItemByName("Container_MenuLeftButtons") as §^! §).height;
                           do
                           {
                              this.§?!E§ = (§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).height;
                              while(_loc2_)
                              {
                                 continue loop1;
                              }
                              continue loop3;
                           }
                           while(_loc1_ && this);
                           
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr142);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.activate();
            loop0:
            while(true)
            {
               §,!s§.§=!I§.§!C§(true);
               loop1:
               while(true)
               {
                  §,!s§.setController(this.§0! §);
                  loop2:
                  while(true)
                  {
                     this.§0! §.init();
                     loop3:
                     while(_loc1_)
                     {
                        this.playThemeMusic();
                        while(!_loc2_)
                        {
                           §'!Q§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§"C§());
                           continue loop3;
                           while(!(_loc2_ && _loc1_))
                           {
                              if(_loc1_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           if(_loc1_ || this)
                           {
                              return;
                              addr61:
                           }
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §'!Q§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§,!s§.§^@§());
            do
            {
               §'!Q§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§&m§ ? false : true);
            }
            while(_loc2_);
            
            if(_loc1_)
            {
               §§goto(addr44);
            }
            §§goto(addr79);
         }
         §§goto(addr61);
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() == §9![§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     this.§;5§ = §'!Q§.getItemByName("Button_LeftMenuOpen").y - 50;
                     loop1:
                     while(true)
                     {
                        this.§?!B§ = §'!Q§.getItemByName("Button_RightMenuOpen").y - 50;
                        loop2:
                        while(!(_loc3_ && param1))
                        {
                           this.§-Q§(param1);
                           loop3:
                           while(true)
                           {
                              if(!this.§#!j§)
                              {
                                 while(!_loc3_)
                                 {
                                    if(!(_loc4_ || this))
                                    {
                                       continue loop1;
                                    }
                                    §,!s§.§ Q§.update(param1);
                                    while(true)
                                    {
                                    }
                                 }
                                 continue loop2;
                                 addr81:
                              }
                              for(; mNextState.length > 0; §§goto(addr94))
                              {
                                 if(!(_loc4_ || this))
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       continue loop3;
                                    }
                                    continue;
                                 }
                                 if(_loc4_)
                                 {
                                    return §9![§.STATE_STATUS_COMPLETED;
                                 }
                                 §§goto(addr81);
                              }
                              addr27:
                              return §9![§.STATE_STATUS_RUNNING;
                           }
                        }
                     }
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr94);
      }
      
      private function §-Q§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§'!Q§.getItemByName("Container_MenuLeftButtons") as §^! §).mClip.scrollRect = new Rectangle(0,0,(§'!Q§.getItemByName("Container_MenuLeftButtons") as §^! §).width,this.§;P§ + 20 - (this.§;P§ - this.§]!c§));
            loop0:
            while(true)
            {
               (§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).mClip.scrollRect = new Rectangle(0,0,(§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).width,this.§?!E§ + 20 - (this.§?!E§ - this.§&!?§));
               loop1:
               while(true)
               {
                  §§push(this.§6!z§);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(this.§"`§);
                        loop3:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              §§push(0);
                              loop4:
                              while(true)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§"`§);
                                       if(_loc3_)
                                       {
                                          §§push(0.3);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§push(§§pop() * param1);
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§pop().§"`§ = §§pop();
                                       addr718:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr701:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§"`§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop9:
                                       while(true)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             while(true)
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   this.§"`§ = 0;
                                                   while(true)
                                                   {
                                                      addr132:
                                                      if(_loc2_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      (§'!Q§.getItemByName("Button_RightMenuOpen") as §[!i§).mClip.MovieClip_RightMenuImage.rotation = this.§ !Y§;
                                                      loop41:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§'!Q§.getItemByName("Container_MenuLeftButtons") as §^! §);
                                                            §§push(this.§;5§);
                                                            if(_loc3_ || this)
                                                            {
                                                               §§push(§§pop() - this.§]!c§);
                                                            }
                                                            §§pop().y = §§pop();
                                                            continue;
                                                         }
                                                         loop40:
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  addr118:
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     if(!(_loc3_ || this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr132);
                                                                  }
                                                                  loop32:
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§ !Y§);
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        §§push(0.5);
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() * param1);
                                                                        }
                                                                        §§push(§§pop() - §§pop());
                                                                     }
                                                                     §§pop().§ !Y§ = §§pop();
                                                                     loop33:
                                                                     while(true)
                                                                     {
                                                                        (§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).y = (§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).y + 0.5 * param1;
                                                                        loop34:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              loop54:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§ !Y§);
                                                                                 loop55:
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(0);
                                                                                       loop56:
                                                                                       while(!(_loc2_ && param1))
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   if(§§pop() < §§pop())
                                                                                                   {
                                                                                                      continue loop34;
                                                                                                   }
                                                                                                   addr272:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§&!?§);
                                                                                                      loop45:
                                                                                                      while(_loc3_ || param1)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         loop46:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop() > §§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  §§push(this);
                                                                                                                  §§push(this.§&!?§);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(0.5);
                                                                                                                     if(!(_loc2_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * param1);
                                                                                                                     }
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                  }
                                                                                                                  §§pop().§&!?§ = §§pop();
                                                                                                                  loop47:
                                                                                                                  while(_loc3_ || _loc3_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§&!?§);
                                                                                                                        if(_loc2_ && param1)
                                                                                                                        {
                                                                                                                           continue loop45;
                                                                                                                        }
                                                                                                                        if(!(_loc3_ || param1))
                                                                                                                        {
                                                                                                                           continue loop55;
                                                                                                                        }
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 continue loop46;
                                                                                                                              }
                                                                                                                              continue loop3;
                                                                                                                           }
                                                                                                                           addr641:
                                                                                                                           loop61:
                                                                                                                           while(!(_loc2_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(this.§?!E§);
                                                                                                                              loop62:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                 {
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                                 addr429:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§&!?§);
                                                                                                                                    addr432:
                                                                                                                                    loop71:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc2_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§?!E§);
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                continue loop62;
                                                                                                                                             }
                                                                                                                                             addr455:
                                                                                                                                             if(!(_loc2_ && this))
                                                                                                                                             {
                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                {
                                                                                                                                                   break loop41;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   addr174:
                                                                                                                                                   addr783:
                                                                                                                                                   loop37:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      (§'!Q§.getItemByName("Button_LeftMenuOpen") as §[!i§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                                                                                      addr184:
                                                                                                                                                      while(_loc3_ || this)
                                                                                                                                                      {
                                                                                                                                                         continue loop33;
                                                                                                                                                      }
                                                                                                                                                      loop53:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc2_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        break loop37;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop37;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           (§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).setVisibility(true);
                                                                                                                                                                           while(_loc3_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§ !Y§);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(180);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc3_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                             §§push(this.§ !Y§);
                                                                                                                                                                                             if(_loc3_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0.5);
                                                                                                                                                                                                if(!_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * param1);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().§ !Y§ = §§pop();
                                                                                                                                                                                             break loop40;
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop40;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr524:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§ !Y§);
                                                                                                                                                                                          break loop45;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr575:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       addr662:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                §§push(this.§]!c§);
                                                                                                                                                                                                if(!_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0.5);
                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * param1);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().§]!c§ = §§pop();
                                                                                                                                                                                                addr675:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr663:
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§]!c§);
                                                                                                                                                                                             break loop61;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr661:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              this.§]!c§ = 0;
                                                                                                                                                                              break loop47;
                                                                                                                                                                           }
                                                                                                                                                                           addr657:
                                                                                                                                                                           addr621:
                                                                                                                                                                        }
                                                                                                                                                                        addr743:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           addr692:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop2;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr612:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(_loc3_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  this.§ !Y§ = 180;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  (§'!Q§.getItemByName("Container_MenuLeftButtons") as §^! §).setVisibility(false);
                                                                                                                                                                  §§goto(addr657);
                                                                                                                                                               }
                                                                                                                                                               addr531:
                                                                                                                                                               addr650:
                                                                                                                                                            }
                                                                                                                                                            while(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop61;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr719:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§]!c§);
                                                                                                                                                                  break loop71;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr767:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            loop49:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop47;
                                                                                                                                                               }
                                                                                                                                                               (§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).setVisibility(false);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     break loop49;
                                                                                                                                                                  }
                                                                                                                                                                  this.§&!?§ = 0;
                                                                                                                                                                  continue loop53;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr260:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr621);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(_loc3_ || this)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§]!c§);
                                                                                                                                                         addr747:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§;P§);
                                                                                                                                                            addr749:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() < §§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this);
                                                                                                                                                                     §§push(this.§]!c§);
                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                        if(_loc3_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * param1);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().§]!c§ = §§pop();
                                                                                                                                                                     §§goto(addr767);
                                                                                                                                                                  }
                                                                                                                                                                  addr750:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr719);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   loop90:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this);
                                                                                                                                                      §§push(this.§"`§);
                                                                                                                                                      if(_loc3_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(0.3);
                                                                                                                                                         if(_loc3_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * param1);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                      }
                                                                                                                                                      §§pop().§"`§ = §§pop();
                                                                                                                                                      addr818:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_ && this)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               (§'!Q§.getItemByName("Container_MenuLeftButtons") as §^! §).setVisibility(true);
                                                                                                                                                               addr837:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§"`§);
                                                                                                                                                                  addr794:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(90);
                                                                                                                                                                     addr795:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() < §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           continue loop90;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr830:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§"`§);
                                                                                                                                                            addr771:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(90);
                                                                                                                                                               addr772:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     continue loop1;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr744);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop90;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr376:
                                                                                                                                             }
                                                                                                                                             while(!(_loc2_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                {
                                                                                                                                                   loop26:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.§]!c§ = this.§;P§;
                                                                                                                                                      §§goto(addr743);
                                                                                                                                                      addr561:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_ && this)
                                                                                                                                                         {
                                                                                                                                                            continue loop26;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr524);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr743);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr692);
                                                                                                                                                §§goto(addr455);
                                                                                                                                             }
                                                                                                                                             §§goto(addr749);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr572);
                                                                                                                                    }
                                                                                                                                    while(!(_loc2_ && this))
                                                                                                                                    {
                                                                                                                                       §§goto(addr731);
                                                                                                                                       §§push(this.§;P§);
                                                                                                                                    }
                                                                                                                                    §§goto(addr771);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop4;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 break loop56;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr381:
                                                                                                                        }
                                                                                                                        §§goto(addr432);
                                                                                                                     }
                                                                                                                     continue loop56;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        §§goto(addr750);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr701);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr284:
                                                                                                            }
                                                                                                            §§goto(addr226);
                                                                                                         }
                                                                                                      }
                                                                                                      loop70:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(180);
                                                                                                         addr528:
                                                                                                         while(!_loc2_)
                                                                                                         {
                                                                                                            if(§§pop() > §§pop())
                                                                                                            {
                                                                                                               §§goto(addr531);
                                                                                                            }
                                                                                                            §§goto(addr486);
                                                                                                            continue loop70;
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr795);
                                                                                             }
                                                                                             §§goto(addr772);
                                                                                          }
                                                                                          §§goto(addr528);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc2_ && param1))
                                                                                          {
                                                                                             if(_loc2_ && param1)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   continue loop32;
                                                                                                }
                                                                                                continue loop54;
                                                                                             }
                                                                                             §§goto(addr662);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr575);
                                                                                          }
                                                                                          §§goto(addr319);
                                                                                       }
                                                                                       addr319:
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§goto(addr747);
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§goto(addr376);
                                                                              }
                                                                              break;
                                                                              addr479:
                                                                              this.§&!?§ = this.§?!E§;
                                                                           }
                                                                           §§goto(addr675);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr184);
                                                            }
                                                            §§goto(addr150);
                                                         }
                                                         while(true)
                                                         {
                                                            (§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).y = (§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).y - 0.5 * param1;
                                                            §§goto(addr561);
                                                         }
                                                      }
                                                      while(_loc3_ || _loc3_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(_loc3_ || this)
                                                            {
                                                               §§goto(addr479);
                                                            }
                                                            §§goto(addr837);
                                                         }
                                                         §§goto(addr718);
                                                      }
                                                      §§goto(addr663);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr818);
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr661);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr794);
                        }
                     }
                     §§goto(addr830);
                  }
               }
            }
         }
         §§goto(addr225);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§'!Q§.getItemByName("Button_Play") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         while(true)
         {
            this.§9!d§ = false;
            while(_loc1_)
            {
               super.deActivate();
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(!_loc8_)
         {
            §§push("OPEN_LEFT_MENU");
            if(_loc7_)
            {
               §§push(_loc6_);
               if(_loc7_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc8_ && param1))
                     {
                        §§push(0);
                        if(!_loc7_)
                        {
                           addr523:
                        }
                     }
                     else
                     {
                        addr630:
                        §§push(11);
                        if(!(_loc8_ && param1))
                        {
                           addr638:
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
                     if(_loc7_ || this)
                     {
                        §§push(_loc6_);
                        if(_loc7_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc7_)
                              {
                                 §§push(1);
                                 if(!(_loc7_ || param3))
                                 {
                                    addr444:
                                 }
                                 §§goto(addr650);
                              }
                              else
                              {
                                 addr597:
                                 §§push(10);
                                 if(!(_loc8_ && param3))
                                 {
                                    §§goto(addr650);
                                 }
                                 else
                                 {
                                    §§goto(addr645);
                                 }
                              }
                              §§goto(addr650);
                           }
                           else
                           {
                              §§push("PLAY_LEVEL");
                              if(!(_loc8_ && this))
                              {
                                 §§push(_loc6_);
                                 if(!_loc8_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc8_ && this))
                                       {
                                          §§push(2);
                                          if(!_loc8_)
                                          {
                                             §§goto(addr650);
                                          }
                                          else
                                          {
                                             §§goto(addr638);
                                          }
                                       }
                                       else
                                       {
                                          addr515:
                                          §§push(6);
                                          if(!(_loc8_ && param3))
                                          {
                                             §§goto(addr523);
                                          }
                                          else
                                          {
                                             addr582:
                                             §§goto(addr650);
                                          }
                                       }
                                       §§goto(addr650);
                                    }
                                    else
                                    {
                                       §§push("OPEN_MENU");
                                       if(!_loc8_)
                                       {
                                          §§push(_loc6_);
                                          if(!_loc7_)
                                          {
                                          }
                                          addr612:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc7_ || param2)
                                             {
                                                §§goto(addr630);
                                             }
                                          }
                                          else
                                          {
                                             addr641:
                                             if("ME_POPUP_VIDEO" !== _loc6_)
                                             {
                                                addr650:
                                                loop12:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      addr351:
                                                      if(this.§6!z§)
                                                      {
                                                         addr352:
                                                         this.§6!z§ = false;
                                                         addr355:
                                                      }
                                                      else
                                                      {
                                                         this.§6!z§ = true;
                                                         addr346:
                                                      }
                                                      break;
                                                   case 1:
                                                      addr318:
                                                      if(this.§"!y§)
                                                      {
                                                         addr319:
                                                         this.§"!y§ = false;
                                                         addr332:
                                                         if(!(_loc7_ || this))
                                                         {
                                                            §§goto(addr346);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this.§"!y§ = true;
                                                         addr312:
                                                      }
                                                      break;
                                                   case 2:
                                                      §-!Q§.§#3§("Menu_Confirm");
                                                      mNextState = §8"!§.§'!q§;
                                                      break;
                                                      addr305:
                                                      addr298:
                                                   case 3:
                                                      §'!Q§.setItemVisibility("Container_MenuButtons",!§'!Q§.getItemByName("Container_MenuButtons").visible);
                                                      addr290:
                                                      if(_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr305);
                                                      break;
                                                   case 4:
                                                      break;
                                                   case 5:
                                                      break;
                                                   case 6:
                                                      addr272:
                                                      §§push(§,!s§.§^@§());
                                                      if(_loc7_)
                                                      {
                                                         addr275:
                                                         §§push(!§§pop());
                                                         if(!_loc8_)
                                                         {
                                                            _loc4_ = §§pop();
                                                            §,!s§.§'6§(_loc4_);
                                                            addr255:
                                                            if(_loc7_ || this)
                                                            {
                                                               §'!Q§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                                                               break;
                                                               addr250:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr332);
                                                            }
                                                            addr278:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr318);
                                                         }
                                                         §§goto(addr318);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr351);
                                                      }
                                                   case 7:
                                                      §-!Q§.§#3§("Menu_Confirm");
                                                      AngryBirdsFP11.§'!g§.§]8§();
                                                      break;
                                                      addr242:
                                                      addr235:
                                                   case 8:
                                                      §-!Q§.§#3§("Menu_Confirm");
                                                      break;
                                                      addr230:
                                                   case 9:
                                                      §-!Q§.§#3§("Menu_Confirm");
                                                      mNextState = §<&§.§'!q§;
                                                      addr209:
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         this.§6!z§ = false;
                                                         addr201:
                                                         if(!_loc8_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr242);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr278);
                                                      }
                                                      break;
                                                      addr223:
                                                   case 10:
                                                      §-!Q§.§#3§("Menu_Confirm");
                                                      while(true)
                                                      {
                                                         if(!(_loc8_ && this))
                                                         {
                                                            §§push(AngryBirdsFP11.§"C§());
                                                            loop1:
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               loop2:
                                                               while(!(_loc8_ && param2))
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                     if(!_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc8_)
                                                                     {
                                                                        AngryBirdsFP11.§]!G§(_loc5_);
                                                                        loop3:
                                                                        while(_loc7_ || this)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(!_loc8_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           continue loop2;
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc8_ && param3))
                                                                              {
                                                                                 break loop12;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                        §§goto(addr352);
                                                                     }
                                                                     §§goto(addr355);
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr201);
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      break;
                                                   case 11:
                                                      break;
                                                   case 12:
                                                      if(this.§,Y§ == null)
                                                      {
                                                         loop4:
                                                         for(; !(_loc8_ && this); if(!(_loc7_ || param3))
                                                         {
                                                            continue;
                                                         },if(_loc7_ || param1)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr53);
                                                                  }
                                                                  addr356:
                                                                  break loop12;
                                                               }
                                                               §§goto(addr298);
                                                            }
                                                            §§goto(addr176);
                                                         },§§goto(addr125))
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     if(!(_loc8_ && param3))
                                                                     {
                                                                        this.§,Y§ = new §"!=§("http://www.youtube.com/v/-eyig_V-_5o");
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       (§'!Q§.getItemByName("MovieClip_YouTubeArea") as §7!p§).changeMovieClip(this.§,Y§);
                                                                                       while(_loc7_ || param2)
                                                                                       {
                                                                                          (§'!Q§.getItemByName("MovieClip_YouTubeArea") as §7!p§).setVisibility(true);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             break loop12;
                                                                                          }
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr151);
                                                                                    }
                                                                                    continue;
                                                                                    addr53:
                                                                                 }
                                                                                 §§goto(addr290);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr223);
                                                                              }
                                                                           }
                                                                           §§goto(addr147);
                                                                        }
                                                                        break loop12;
                                                                     }
                                                                     §§goto(addr312);
                                                                  }
                                                                  §§goto(addr255);
                                                               }
                                                               §§goto(addr250);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr230);
                                                            }
                                                         }
                                                         §§goto(addr209);
                                                      }
                                                      §§goto(addr356);
                                                }
                                                return;
                                                §§push(13);
                                             }
                                          }
                                          §§goto(addr650);
                                          §§goto(addr650);
                                       }
                                       addr609:
                                       §§push(_loc6_);
                                       if(_loc7_)
                                       {
                                          §§goto(addr612);
                                       }
                                       §§goto(addr641);
                                    }
                                 }
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       §§push(3);
                                       if(_loc7_ || param3)
                                       {
                                          §§goto(addr444);
                                       }
                                       else
                                       {
                                          addr559:
                                          §§goto(addr650);
                                       }
                                    }
                                    else
                                    {
                                       addr492:
                                       §§push(5);
                                       if(!(_loc8_ && param1))
                                       {
                                          §§goto(addr650);
                                       }
                                       else
                                       {
                                          §§goto(addr582);
                                       }
                                    }
                                    §§goto(addr650);
                                 }
                                 else
                                 {
                                    §§push("OPEN_AVATAR_CREATOR");
                                    if(!(_loc8_ && param3))
                                    {
                                       §§push(_loc6_);
                                       if(_loc7_ || this)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc8_)
                                             {
                                                §§push(4);
                                                if(!(_loc8_ && param3))
                                                {
                                                   §§goto(addr650);
                                                }
                                                else
                                                {
                                                   §§goto(addr523);
                                                }
                                             }
                                             else
                                             {
                                                addr538:
                                                §§push(7);
                                                if(!_loc8_)
                                                {
                                                   §§goto(addr650);
                                                }
                                                else
                                                {
                                                   §§goto(addr559);
                                                }
                                             }
                                             §§goto(addr650);
                                          }
                                          else
                                          {
                                             §§push("TOGGLE_SOUNDS");
                                             if(!(_loc8_ && param3))
                                             {
                                                §§push(_loc6_);
                                                if(_loc7_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         §§goto(addr492);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr538);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("TOGGLE_PARTICLES");
                                                      if(_loc7_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc8_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc8_ && param3))
                                                               {
                                                                  §§goto(addr515);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr630);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push("FULLSCREEN_BUTTON");
                                                               if(_loc8_)
                                                               {
                                                               }
                                                               addr563:
                                                               §§push(_loc6_);
                                                               if(!_loc8_)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        §§push(9);
                                                                        if(!(_loc8_ && param1))
                                                                        {
                                                                           §§goto(addr582);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr638);
                                                                        }
                                                                     }
                                                                     §§goto(addr650);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("SOUNDS_BUTTON");
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        addr591:
                                                                        §§push(_loc6_);
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr594:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§goto(addr597);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr612);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push("POPUP_CREDITS_CLOSE");
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§goto(addr609);
                                                                              }
                                                                              §§goto(addr641);
                                                                           }
                                                                           §§goto(addr612);
                                                                        }
                                                                     }
                                                                     §§goto(addr641);
                                                                  }
                                                               }
                                                               §§goto(addr594);
                                                            }
                                                            §§goto(addr650);
                                                         }
                                                         §§goto(addr612);
                                                      }
                                                      §§goto(addr563);
                                                   }
                                                   §§goto(addr650);
                                                }
                                                §§goto(addr594);
                                             }
                                             §§push(_loc6_);
                                             if(_loc7_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc7_ || param2)
                                                   {
                                                      §§goto(addr538);
                                                   }
                                                   else
                                                   {
                                                      addr551:
                                                      §§push(8);
                                                      if(!(_loc7_ || param3))
                                                      {
                                                         §§goto(addr645);
                                                      }
                                                      §§goto(addr650);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push("OPEN_CREDITS");
                                                   if(!_loc8_)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc7_)
                                                      {
                                                         addr548:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§goto(addr551);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr630);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("CREDITS_BUTTON");
                                                            if(!_loc8_)
                                                            {
                                                               §§goto(addr563);
                                                            }
                                                            §§goto(addr641);
                                                         }
                                                         §§goto(addr650);
                                                      }
                                                   }
                                                   §§goto(addr609);
                                                }
                                                §§goto(addr650);
                                             }
                                             §§goto(addr612);
                                          }
                                       }
                                       §§goto(addr594);
                                    }
                                    §§goto(addr563);
                                 }
                              }
                              §§goto(addr591);
                           }
                        }
                        §§goto(addr548);
                     }
                     §§goto(addr609);
                  }
                  §§goto(addr650);
               }
               §§goto(addr612);
            }
            §§goto(addr609);
         }
         §§goto(addr597);
      }
   }
}
