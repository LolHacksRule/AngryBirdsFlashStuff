package §0![§
{
   import §%c§.§=!X§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'@§.§25§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!T§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §;'§.§7"'§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §]x§ extends §5y§
   {
      
      public static const §'=§:String = "LevelStartState";
      
      private static var §?F§:BitmapData = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §]x§))
         {
            §'=§ = "LevelStartState";
         }
         do
         {
            §?F§ = null;
         }
         while(_loc1_);
         
      }
      
      private var §=l§:Boolean = false;
      
      private var § "4§:Boolean = false;
      
      private var §?u§:§7"'§ = null;
      
      private var §,!%§:Boolean = false;
      
      private var §%!z§:Boolean = false;
      
      private var §>l§:Number = 0;
      
      private var §^!k§:Number = 0;
      
      private var §1$§:Number = 0;
      
      private var §`e§:Number = 0;
      
      private var §&!s§:Number;
      
      private var §9!"§:Number;
      
      private var §&!]§:Number;
      
      private var § "$§:Number;
      
      private var §["4§:§25§;
      
      public function §]x§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public static function get §<1§() : BitmapData
      {
         return §?F§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               §?E§ = new §'s§(this);
               while(true)
               {
                  §?E§.init(§`7§.§>"?§.Views.View_LevelStart[0]);
                  loop2:
                  while(!_loc2_)
                  {
                     this.§?u§ = new §7"'§(§=!X§.§!'§);
                     while(true)
                     {
                        this.§&!s§ = (§?E§.getItemByName("Container_MenuLeftButtons") as §`!T§).height;
                        addr102:
                        while(!_loc2_)
                        {
                        }
                        continue loop2;
                        addr48:
                        if(_loc1_ || _loc2_)
                        {
                           return;
                           addr55:
                        }
                     }
                  }
               }
               addr85:
               while(true)
               {
                  if(_loc1_ || _loc1_)
                  {
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§9!"§ = (§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).height;
            §§goto(addr85);
         }
         §§goto(addr55);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
         }
         loop0:
         while(true)
         {
            §=!X§.§!'§.§;p§(true);
            while(true)
            {
               §=!X§.§]T§(this.§?u§);
               loop2:
               while(!(_loc2_ && _loc1_))
               {
                  this.§?u§.init();
                  loop3:
                  while(true)
                  {
                     this.§<!,§();
                     do
                     {
                        §?E§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
                        while(_loc1_)
                        {
                           §?E§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§=!X§.§5$§());
                           continue loop3;
                        }
                        continue loop2;
                     }
                     while(_loc2_ && _loc2_);
                     
                     continue loop0;
                  }
               }
            }
         }
      }
      
      protected function §<!,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            AngryBirdsFP11.§<!,§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && this))
         {
            §§push(_loc2_);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() == §5y§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     this.§&!]§ = §?E§.getItemByName("Button_LeftMenuOpen").y - 50;
                     loop1:
                     while(true)
                     {
                        this.§ "$§ = §?E§.getItemByName("Button_RightMenuOpen").y - 50;
                        loop2:
                        while(true)
                        {
                           this.§+",§(param1);
                           loop3:
                           for(; _loc4_; while(_loc4_ || _loc2_)
                           {
                              if(_loc3_ && _loc2_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr38);
                              §§goto(addr55);
                           })
                           {
                              loop4:
                              while(true)
                              {
                                 if(this.§ "4§)
                                 {
                                    while(mNextState.length > 0)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!(_loc3_ && param1))
                                          {
                                             break loop4;
                                          }
                                          continue loop1;
                                       }
                                       addr55:
                                       if(!(_loc3_ && this))
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 else
                                 {
                                    addr38:
                                 }
                                 if(_loc4_)
                                 {
                                    §=!X§.§#H§.update(param1);
                                 }
                                 continue loop3;
                                 return §5y§.STATE_STATUS_RUNNING;
                              }
                              return §5y§.STATE_STATUS_COMPLETED;
                           }
                        }
                     }
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr106);
      }
      
      private function §+",§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§?E§.getItemByName("Container_MenuLeftButtons") as §`!T§).mClip.scrollRect = new Rectangle(0,0,(§?E§.getItemByName("Container_MenuLeftButtons") as §`!T§).width,this.§&!s§ + 20 - (this.§&!s§ - this.§1$§));
            loop0:
            while(true)
            {
               (§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).mClip.scrollRect = new Rectangle(0,0,(§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).width,this.§9!"§ + 20 - (this.§9!"§ - this.§`e§));
               loop1:
               while(true)
               {
                  §§push(this.§,!%§);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(!_loc3_)
                        {
                           (§?E§.getItemByName("Container_MenuLeftButtons") as §`!T§).setVisibility(true);
                           while(true)
                           {
                              §§push(this.§>l§);
                              addr783:
                              while(true)
                              {
                                 §§push(90);
                              }
                           }
                        }
                        continue loop1;
                        addr802:
                     }
                     else
                     {
                        §§push(this.§>l§);
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           loop4:
                           while(true)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§>l§);
                                       if(!_loc3_)
                                       {
                                          §§push(0.3);
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(§§pop() * param1);
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§pop().§>l§ = §§pop();
                                       addr709:
                                       while(true)
                                       {
                                       }
                                       loop20:
                                       while(true)
                                       {
                                          if(_loc3_ && _loc2_)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc2_ || this)
                                          {
                                             while(true)
                                             {
                                                (§?E§.getItemByName("Container_MenuLeftButtons") as §`!T§).setVisibility(false);
                                                addr646:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      break loop20;
                                                   }
                                                   this.§1$§ = 0;
                                                   loop92:
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         addr617:
                                                         continue loop2;
                                                      }
                                                      addr723:
                                                      while(true)
                                                      {
                                                         this.§1$§ = this.§&!s§;
                                                         addr727:
                                                         while(true)
                                                         {
                                                            addr678:
                                                            while(true)
                                                            {
                                                               continue loop2;
                                                            }
                                                         }
                                                         continue loop92;
                                                      }
                                                   }
                                                }
                                             }
                                             addr639:
                                          }
                                          loop21:
                                          while(true)
                                          {
                                             loop22:
                                             while(true)
                                             {
                                                §§push(this.§1$§);
                                                loop23:
                                                while(!(_loc3_ && param1))
                                                {
                                                   §§push(this.§&!s§);
                                                   loop24:
                                                   while(true)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         while(!(_loc3_ && this))
                                                         {
                                                            §§push(this);
                                                            §§push(this.§1$§);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§push(0.5);
                                                               if(_loc2_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() * param1);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().§1$§ = §§pop();
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         continue loop21;
                                                         addr741:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§1$§);
                                                         while(true)
                                                         {
                                                            §§push(this.§&!s§);
                                                            continue loop24;
                                                            addr378:
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               §§push(0);
                                                               while(true)
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     loop36:
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§^!k§);
                                                                           if(_loc2_ || param1)
                                                                           {
                                                                              §§push(0.5);
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop() * param1);
                                                                              }
                                                                              §§push(§§pop() - §§pop());
                                                                           }
                                                                           §§pop().§^!k§ = §§pop();
                                                                           loop37:
                                                                           while(true)
                                                                           {
                                                                              (§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).y = (§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).y + 0.5 * param1;
                                                                              loop38:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§^!k§);
                                                                                       loop53:
                                                                                       while(!_loc3_)
                                                                                       {
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             §§push(0);
                                                                                             loop54:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   if(§§pop() < §§pop())
                                                                                                   {
                                                                                                      continue loop37;
                                                                                                   }
                                                                                                   loop61:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§`e§);
                                                                                                      loop62:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                         {
                                                                                                            continue loop54;
                                                                                                         }
                                                                                                         addr670:
                                                                                                         loop44:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               addr498:
                                                                                                               if(_loc2_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(180);
                                                                                                                  while(!(_loc3_ && this))
                                                                                                                  {
                                                                                                                     if(§§pop() > §§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§^!k§ = 180;
                                                                                                                           addr517:
                                                                                                                           while(_loc2_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           §§goto(addr646);
                                                                                                                        }
                                                                                                                        addr514:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§`e§);
                                                                                                                        addr465:
                                                                                                                        loop49:
                                                                                                                        while(!(_loc3_ && param1))
                                                                                                                        {
                                                                                                                           §§push(this.§9!"§);
                                                                                                                           loop50:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop() < §§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(this.§`e§);
                                                                                                                                    if(!(_loc3_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(0.5);
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * param1);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    §§pop().§`e§ = §§pop();
                                                                                                                                    addr492:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr475:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§`e§);
                                                                                                                                 addr417:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop3;
                                                                                                                                    }
                                                                                                                                    §§push(this.§9!"§);
                                                                                                                                    if(!(_loc2_ || _loc2_))
                                                                                                                                    {
                                                                                                                                       continue loop50;
                                                                                                                                    }
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          if(_loc2_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             addr450:
                                                                                                                                             if(_loc2_ || this)
                                                                                                                                             {
                                                                                                                                                this.§`e§ = this.§9!"§;
                                                                                                                                                loop77:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   addr366:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      loop70:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         (§?E§.getItemByName("Button_LeftMenuOpen") as §="#§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                                                                                         loop71:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc2_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     (§?E§.getItemByName("Button_RightMenuOpen") as §="#§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                                                                                                     loop72:
                                                                                                                                                                     while(!(_loc3_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop77;
                                                                                                                                                                        }
                                                                                                                                                                        (§?E§.getItemByName("Button_LeftMenuOpen") as §="#§).mClip.MovieClip_LeftMenuImage.rotation = this.§>l§;
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr142:
                                                                                                                                                                              if(_loc3_ && _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                                 addr115:
                                                                                                                                                                              }
                                                                                                                                                                              (§?E§.getItemByName("Button_RightMenuOpen") as §="#§).mClip.MovieClip_RightMenuImage.rotation = this.§^!k§;
                                                                                                                                                                              loop74:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop72;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop0;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr811);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       (§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).setVisibility(true);
                                                                                                                                                                                       break loop74;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr589:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop20;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop71;
                                                                                                                                                                           addr49:
                                                                                                                                                                           if(_loc3_ && param1)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           addr56:
                                                                                                                                                                           if(_loc2_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc2_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc3_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    return;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr666:
                                                                                                                                                                                 addr549:
                                                                                                                                                                                 loop60:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                          §§push(this.§^!k§);
                                                                                                                                                                                          if(!(_loc3_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0.5);
                                                                                                                                                                                             if(!(_loc3_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * param1);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§^!k§ = §§pop();
                                                                                                                                                                                          break loop71;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr770);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                          §§push(this.§1$§);
                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0.5);
                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * param1);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§1$§ = §§pop();
                                                                                                                                                                                          break loop60;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr654:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr618:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§1$§);
                                                                                                                                                                                       break loop49;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc2_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc3_ && _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       (§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).setVisibility(false);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§`e§ = 0;
                                                                                                                                                                                          break loop72;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr268:
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr771:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§>l§);
                                                                                                                                                                                          addr774:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(90);
                                                                                                                                                                                             addr775:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop21;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop22;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr514);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr56);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr727);
                                                                                                                                                                              addr245:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr517);
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop61;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop20;
                                                                                                                                                                           §§goto(addr142);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr208:
                                                                                                                                                                           if(!(_loc3_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop70;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr666);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr312:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop38;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§`e§);
                                                                                                                                                                                       if(_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc2_ || _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                if(_loc3_ && _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop54;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() >= §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop70;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr245);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(180);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr543:
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr549);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop44;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr622:
                                                                                                                                                                                                while(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop20;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop2;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr653:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr654);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop4;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop53;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop62;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop23;
                                                                                                                                                                                    addr218:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr475);
                                                                                                                                                                                 §§goto(addr208);
                                                                                                                                                                              }
                                                                                                                                                                              addr312:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr618);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                        §§goto(addr160);
                                                                                                                                                                     }
                                                                                                                                                                     addr160:
                                                                                                                                                                     §§goto(addr268);
                                                                                                                                                                  }
                                                                                                                                                                  loop11:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr649:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§1$§);
                                                                                                                                                                        addr652:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr653);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop11;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr677:
                                                                                                                                                               }
                                                                                                                                                               break loop70;
                                                                                                                                                            }
                                                                                                                                                            continue loop36;
                                                                                                                                                         }
                                                                                                                                                         addr575:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               (§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).y = (§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).y - 0.5 * param1;
                                                                                                                                                               while(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr493);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr741);
                                                                                                                                                               addr537:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr802);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr811);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr610);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr461:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§>l§ = 0;
                                                                                                                                                §§goto(addr677);
                                                                                                                                                §§goto(addr450);
                                                                                                                                             }
                                                                                                                                             addr674:
                                                                                                                                          }
                                                                                                                                          §§goto(addr537);
                                                                                                                                       }
                                                                                                                                       §§goto(addr461);
                                                                                                                                    }
                                                                                                                                    §§goto(addr366);
                                                                                                                                 }
                                                                                                                                 continue loop24;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr622);
                                                                                                                           §§goto(addr465);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        if(§§pop() < §§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr674);
                                                                                                                        }
                                                                                                                        §§goto(addr649);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr775);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr671:
                                                                                                                  addr506:
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr652);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr671);
                                                                                                            §§goto(addr498);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr506);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr465);
                                                                                       }
                                                                                       addr371:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_ || _loc2_)
                                                                                          {
                                                                                             §§goto(addr378);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr417);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr317:
                                                                                 }
                                                                                 §§goto(addr492);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr575);
                                                                     }
                                                                  }
                                                                  §§goto(addr317);
                                                               }
                                                            }
                                                            §§goto(addr774);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr783);
                                             }
                                          }
                                       }
                                       §§goto(addr709);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr670);
                                    §§goto(addr709);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§goto(addr785);
                        }
                        §§goto(addr771);
                     }
                  }
               }
            }
         }
         §§goto(addr639);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            (§?E§.getItemByName("Button_Play") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            do
            {
               this.§=l§ = false;
               do
               {
                  super.deActivate();
               }
               while(_loc1_);
               
            }
            while(_loc1_);
            
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(_loc8_)
         {
            if("OPEN_LEFT_MENU" === _loc6_)
            {
               if(!(_loc7_ && param3))
               {
                  addr399:
                  §§push(0);
                  if(_loc7_)
                  {
                     addr517:
                  }
               }
               else
               {
                  addr413:
                  §§push(1);
                  if(_loc7_)
                  {
                     addr462:
                  }
               }
            }
            else
            {
               if("OPEN_RIGHT_MENU" === _loc6_)
               {
                  if(_loc8_ || param2)
                  {
                     §§goto(addr413);
                  }
               }
               else if("PLAY_LEVEL" === _loc6_)
               {
                  if(_loc8_)
                  {
                     §§push(2);
                     if(_loc8_ || param3)
                     {
                        §§goto(addr553);
                     }
                     else
                     {
                        §§goto(addr517);
                     }
                  }
                  else
                  {
                     addr445:
                     §§push(4);
                     if(!(_loc8_ || param3))
                     {
                        addr489:
                     }
                     §§goto(addr553);
                  }
               }
               else if("OPEN_MENU" === _loc6_)
               {
                  if(!_loc7_)
                  {
                     §§push(3);
                     if(_loc8_)
                     {
                        §§goto(addr553);
                     }
                     else
                     {
                        §§goto(addr462);
                     }
                  }
               }
               else if("OPEN_AVATAR_CREATOR" === _loc6_)
               {
                  if(_loc8_)
                  {
                     §§goto(addr445);
                  }
                  else
                  {
                     addr477:
                     §§push(7);
                     if(_loc7_)
                     {
                     }
                     §§goto(addr553);
                  }
               }
               else
               {
                  if("TOGGLE_SOUNDS" === _loc6_)
                  {
                     if(!_loc7_)
                     {
                        §§push(5);
                        if(!_loc7_)
                        {
                           §§goto(addr462);
                        }
                        else
                        {
                           addr548:
                           §§goto(addr553);
                        }
                     }
                     else
                     {
                        §§goto(addr477);
                     }
                  }
                  else if("TOGGLE_PARTICLES" === _loc6_)
                  {
                     if(!_loc7_)
                     {
                        §§push(6);
                        if(!_loc8_)
                        {
                           addr503:
                        }
                        §§goto(addr553);
                     }
                     else
                     {
                        addr528:
                        §§push(11);
                        if(!_loc7_)
                        {
                           addr531:
                           §§goto(addr553);
                        }
                        else
                        {
                           §§goto(addr548);
                        }
                     }
                  }
                  else if("FULLSCREEN_BUTTON" === _loc6_)
                  {
                     if(!_loc7_)
                     {
                        §§goto(addr477);
                     }
                  }
                  else if("OPEN_CREDITS" === _loc6_)
                  {
                     if(_loc8_)
                     {
                        §§push(8);
                        if(!_loc7_)
                        {
                           §§goto(addr489);
                        }
                        else
                        {
                           §§goto(addr548);
                        }
                     }
                  }
                  else if("CREDITS_BUTTON" === _loc6_)
                  {
                     if(_loc8_)
                     {
                        §§push(9);
                        if(!(_loc7_ && param3))
                        {
                           §§goto(addr503);
                        }
                        §§goto(addr553);
                     }
                     else
                     {
                        §§goto(addr528);
                     }
                  }
                  else
                  {
                     if("SOUNDS_BUTTON" === _loc6_)
                     {
                        if(!_loc7_)
                        {
                           §§push(10);
                           if(_loc8_ || param2)
                           {
                              §§goto(addr517);
                           }
                           §§goto(addr553);
                        }
                        else
                        {
                           §§goto(addr528);
                        }
                     }
                     else
                     {
                        if("POPUP_CREDITS_CLOSE" === _loc6_)
                        {
                           if(!(_loc7_ && param1))
                           {
                              §§goto(addr528);
                           }
                        }
                        else if("ME_POPUP_VIDEO" !== _loc6_)
                        {
                           addr553:
                           loop6:
                           switch(§§pop())
                           {
                              case 0:
                                 addr377:
                                 if(this.§,!%§)
                                 {
                                    addr378:
                                    this.§,!%§ = false;
                                    addr381:
                                 }
                                 else
                                 {
                                    this.§,!%§ = true;
                                    addr372:
                                 }
                                 break;
                              case 1:
                                 addr352:
                                 if(this.§%!z§)
                                 {
                                    if(_loc8_ || param1)
                                    {
                                       if(!_loc7_)
                                       {
                                          this.§%!z§ = false;
                                       }
                                       else
                                       {
                                          §§goto(addr372);
                                       }
                                    }
                                    addr365:
                                 }
                                 else
                                 {
                                    this.§%!z§ = true;
                                    addr346:
                                 }
                                 break;
                              case 2:
                                 §5!U§.playSound("Menu_Confirm");
                                 addr332:
                                 if(_loc8_ || this)
                                 {
                                    mNextState = §="§.§'=§;
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    break;
                                 }
                                 §§goto(addr346);
                                 break;
                              case 3:
                                 §?E§.setItemVisibility("Container_MenuButtons",!§?E§.getItemByName("Container_MenuButtons").visible);
                                 break;
                                 addr317:
                              case 4:
                                 break;
                              case 5:
                                 break;
                              case 6:
                                 addr299:
                                 §§push(!§=!X§.§5$§());
                                 if(_loc8_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc8_)
                                    {
                                       §=!X§.§]D§(_loc4_);
                                       addr287:
                                       if(!_loc7_)
                                       {
                                          §?E§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                                          addr270:
                                          if(!_loc7_)
                                          {
                                             break;
                                          }
                                          §§goto(addr365);
                                       }
                                       else
                                       {
                                          §§goto(addr381);
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr377);
                                 §§goto(addr377);
                              case 7:
                                 §5!U§.playSound("Menu_Confirm");
                                 AngryBirdsFP11.§%d§.§9+§();
                                 if(_loc8_)
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       break;
                                    }
                                    §§goto(addr287);
                                 }
                                 break;
                                 addr262:
                              case 8:
                                 §5!U§.playSound("Menu_Confirm");
                                 break;
                                 addr241:
                              case 9:
                                 §5!U§.playSound("Menu_Confirm");
                                 mNextState = §'"6§.§'=§;
                                 this.§,!%§ = false;
                                 addr221:
                                 break;
                                 addr221:
                                 addr234:
                                 addr227:
                              case 10:
                                 §5!U§.playSound("Menu_Confirm");
                                 loop0:
                                 while(true)
                                 {
                                    if(_loc8_ || param3)
                                    {
                                       §§push(AngryBirdsFP11.getSoundsEnabled());
                                       if(_loc8_)
                                       {
                                          if(_loc8_)
                                          {
                                             §§push(!§§pop());
                                             loop1:
                                             for(; !(_loc7_ && this); §§push(_loc5_),if(!(_loc8_ || param2))
                                             {
                                                continue;
                                             },if(_loc8_ || param3)
                                             {
                                                if(§§pop())
                                                {
                                                   addr167:
                                                   this.§<!,§();
                                                }
                                                §?E§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
                                                addr135:
                                                if(_loc8_ || this)
                                                {
                                                   if(_loc8_ || param3)
                                                   {
                                                      break loop6;
                                                   }
                                                   §§goto(addr378);
                                                }
                                                else
                                                {
                                                   §§goto(addr234);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr299);
                                             })
                                             {
                                                _loc5_ = §§pop();
                                                while(true)
                                                {
                                                   if(_loc8_ || param3)
                                                   {
                                                      AngryBirdsFP11.setSoundsEnabled(_loc5_);
                                                      while(true)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(!_loc7_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§goto(addr270);
                                                      }
                                                      addr174:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr221);
                                                   }
                                                }
                                             }
                                             §§goto(addr299);
                                             addr187:
                                          }
                                          else
                                          {
                                             §§goto(addr352);
                                          }
                                          §§goto(addr352);
                                       }
                                       §§goto(addr187);
                                    }
                                    else
                                    {
                                       §§goto(addr317);
                                    }
                                 }
                                 break;
                              case 11:
                                 break;
                              case 12:
                                 if(this.§["4§ == null)
                                 {
                                    if(_loc8_)
                                    {
                                       if(_loc8_)
                                       {
                                          this.§["4§ = new §25§("http://www.youtube.com/v/-eyig_V-_5o");
                                          if(_loc7_ && this)
                                          {
                                          }
                                          break;
                                       }
                                       §§goto(addr241);
                                    }
                                    if(_loc8_ || param2)
                                    {
                                       if(!(_loc7_ && param3))
                                       {
                                          if(!_loc7_)
                                          {
                                             if(!(_loc7_ && param3))
                                             {
                                                loop3:
                                                while(true)
                                                {
                                                   (§?E§.getItemByName("MovieClip_YouTubeArea") as §%+§).changeMovieClip(this.§["4§);
                                                   while(!(_loc7_ && param3))
                                                   {
                                                      (§?E§.getItemByName("MovieClip_YouTubeArea") as §%+§).setVisibility(true);
                                                      if(_loc8_)
                                                      {
                                                         if(_loc7_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc8_ || param1)
                                                         {
                                                            if(!(_loc7_ && param2))
                                                            {
                                                               if(_loc8_ || this)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  addr382:
                                                                  continue loop3;
                                                               }
                                                               §§goto(addr262);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr167);
                                                            }
                                                         }
                                                         §§goto(addr135);
                                                      }
                                                      break loop6;
                                                   }
                                                   §§goto(addr227);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr332);
                                             }
                                             §§goto(addr352);
                                          }
                                          else
                                          {
                                             §§goto(addr195);
                                          }
                                       }
                                       §§goto(addr174);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr382);
                           }
                           return;
                           §§push(13);
                        }
                        §§goto(addr553);
                     }
                     §§goto(addr553);
                  }
                  §§goto(addr553);
               }
               §§goto(addr553);
               if(_loc8_)
               {
                  §§goto(addr548);
               }
            }
            §§goto(addr553);
         }
         §§goto(addr399);
      }
   }
}
