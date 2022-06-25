package §9!5§
{
   import §"R§.§ !Q§;
   import §"m§.§;!v§;
   import §0X§.§?6§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §?!7§.§5!I§;
   import §?!7§.§8;§;
   import §?!7§.§[I§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import §true§.§ _§;
   
   public class §!i§ extends §?Y§
   {
      
      public static const §?h§:String = "LevelStartState";
      
      private static var §5!O§:BitmapData = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?h§ = "LevelStartState";
         }
         do
         {
            §5!O§ = null;
         }
         while(!_loc2_);
         
      }
      
      private var §]!X§:Boolean = false;
      
      private var §^#§:Boolean = false;
      
      private var §#j§:§;!v§ = null;
      
      private var §,I§:Boolean = false;
      
      private var §'3§:Boolean = false;
      
      private var §;!g§:Number = 0;
      
      private var §^!f§:Number = 0;
      
      private var §!!,§:Number = 0;
      
      private var §;!_§:Number = 0;
      
      private var §1g§:Number;
      
      private var §5!$§:Number;
      
      private var §9!q§:Number;
      
      private var §+!T§:Number;
      
      private var §@e§:§?6§;
      
      public function §!i§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super(param1,param2);
         }
      }
      
      public static function get §&n§() : BitmapData
      {
         return §5!O§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
            while(true)
            {
               §5!P§ = new §'!^§(this);
               addr132:
               while(true)
               {
                  §5!P§.init(§[!'§.§+@§.Views.View_LevelStart[0]);
                  loop2:
                  while(true)
                  {
                     this.§#j§ = new §;!v§(§ _§.§!6§);
                     addr115:
                     while(true)
                     {
                        this.§1g§ = (§5!P§.getItemByName("Container_MenuLeftButtons") as §8;§).height;
                        addr105:
                        while(_loc2_)
                        {
                        }
                        continue loop2;
                     }
                  }
               }
            }
            addr135:
         }
         while(true)
         {
            this.§5!$§ = (§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).height;
            loop6:
            while(!_loc1_)
            {
               this.§9!q§ = §5!P§.getItemByName("Button_LeftMenuOpen").y - 50;
               while(true)
               {
                  if(_loc1_)
                  {
                     continue loop6;
                  }
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr135);
               }
               §§goto(addr132);
            }
            §§goto(addr105);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.activate();
            while(true)
            {
               § _§.§!6§.§2!d§(true);
            }
            addr126:
         }
         while(true)
         {
            § _§.setController(this.§#j§);
            loop2:
            while(true)
            {
               this.§#j§.init();
               while(true)
               {
                  AngryBirdsFP11.playThemeMusic();
                  addr80:
                  while(!(_loc2_ && _loc2_))
                  {
                     continue loop2;
                  }
               }
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() == §?Y§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     this.§9!q§ = §5!P§.getItemByName("Button_LeftMenuOpen").y - 50;
                     loop1:
                     while(!_loc4_)
                     {
                        this.§+!T§ = §5!P§.getItemByName("Button_RightMenuOpen").y - 50;
                        while(true)
                        {
                           this.§9!>§(param1);
                           loop3:
                           while(true)
                           {
                              if(!(_loc4_ && this))
                              {
                                 if(this.§^#§)
                                 {
                                    for(; mNextState.length > 0; §§goto(addr96))
                                    {
                                       if(!_loc4_)
                                       {
                                          return §?Y§.STATE_STATUS_COMPLETED;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr54);
                                    }
                                    return §?Y§.STATE_STATUS_RUNNING;
                                 }
                                 while(!_loc4_)
                                 {
                                    § _§.§?!]§.update(param1);
                                    while(true)
                                    {
                                    }
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       continue loop3;
                                    }
                                 }
                                 continue loop1;
                                 addr36:
                              }
                              continue loop0;
                           }
                           if(!(_loc3_ || _loc2_))
                           {
                              continue;
                           }
                           §§goto(addr36);
                        }
                     }
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr128);
      }
      
      private function §9!>§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§5!P§.getItemByName("Container_MenuLeftButtons") as §8;§).mClip.scrollRect = new Rectangle(0,0,(§5!P§.getItemByName("Container_MenuLeftButtons") as §8;§).width,this.§1g§ + 20 - (this.§1g§ - this.§!!,§));
            loop0:
            while(true)
            {
               (§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).mClip.scrollRect = new Rectangle(0,0,(§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).width,this.§5!$§ + 20 - (this.§5!$§ - this.§;!_§));
               while(true)
               {
                  §§push(this.§,I§);
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(this.§;!g§);
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           addr712:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 while(true)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(this);
                                       §§push(this.§;!g§);
                                       if(!(_loc2_ && param1))
                                       {
                                          §§push(0.3);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() * param1);
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§pop().§;!g§ = §§pop();
                                       while(true)
                                       {
                                          addr695:
                                          addr71:
                                          while(true)
                                          {
                                             §§push(this.§;!g§);
                                             addr698:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr699:
                                                while(true)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         this.§;!g§ = 0;
                                                         addr703:
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  (§5!P§.getItemByName("Container_MenuLeftButtons") as §8;§).setVisibility(true);
                                                                  addr827:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§;!g§);
                                                                     addr796:
                                                                     while(true)
                                                                     {
                                                                        §§push(90);
                                                                        addr797:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§;!g§);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§push(0.3);
                                                                                    if(!(_loc2_ && this))
                                                                                    {
                                                                                       §§push(§§pop() * param1);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§pop().§;!g§ = §§pop();
                                                                                 addr815:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              addr798:
                                                                           }
                                                                           addr784:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§;!g§);
                                                                              addr787:
                                                                              while(true)
                                                                              {
                                                                                 §§push(90);
                                                                                 addr788:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§;!g§ = 90;
                                                                                          addr792:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       addr789:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§!!,§);
                                                                                       addr763:
                                                                                       loop65:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§1g§);
                                                                                          addr765:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push(this.§!!,§);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      §§push(0.5);
                                                                                                      if(!(_loc2_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(§§pop() * param1);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   §§pop().§!!,§ = §§pop();
                                                                                                   addr783:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                addr766:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§!!,§);
                                                                                                continue loop65;
                                                                                             }
                                                                                             continue loop65;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr820:
                                                            }
                                                         }
                                                      }
                                                      addr700:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§!!,§);
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                          }
                                          if(_loc2_ && this)
                                          {
                                             continue;
                                          }
                                          §§goto(addr78);
                                       }
                                    }
                                    §§goto(addr751);
                                 }
                                 addr713:
                              }
                              §§goto(addr695);
                           }
                        }
                     }
                     §§goto(addr820);
                     loop10:
                     while(true)
                     {
                        §§push(this.§'3§);
                        if(!(_loc3_ || _loc3_))
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           §§push(this.§^!f§);
                           loop11:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 §§push(0);
                                 loop12:
                                 while(_loc3_ || _loc3_)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       loop13:
                                       while(!(_loc2_ && param1))
                                       {
                                          §§push(this);
                                          §§push(this.§^!f§);
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§push(0.5);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() * param1);
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          §§pop().§^!f§ = §§pop();
                                          loop14:
                                          for(; !(_loc2_ && this); if(!(_loc3_ || this))
                                          {
                                             continue;
                                          },if(_loc3_ || _loc3_)
                                          {
                                             (§5!P§.getItemByName("Button_LeftMenuOpen") as §5!I§).mClip.MovieClip_LeftMenuImage.rotation = this.§;!g§;
                                             loop30:
                                             while(_loc3_ || _loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop13;
                                                }
                                                (§5!P§.getItemByName("Button_RightMenuOpen") as §5!I§).mClip.MovieClip_RightMenuImage.rotation = this.§^!f§;
                                                loop31:
                                                while(_loc3_ || this)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      §§push(§5!P§.getItemByName("Container_MenuLeftButtons") as §8;§);
                                                      §§push(this.§9!q§);
                                                      if(!(_loc2_ && param1))
                                                      {
                                                         §§push(§§pop() - this.§!!,§);
                                                      }
                                                      §§pop().y = §§pop();
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr261);
                                                               }
                                                               break;
                                                            }
                                                            continue loop30;
                                                         }
                                                         continue loop31;
                                                      }
                                                      §§goto(addr215);
                                                   }
                                                   §§goto(addr480);
                                                }
                                                §§goto(addr248);
                                             }
                                             §§goto(addr203);
                                          },§§goto(addr789))
                                          {
                                             (§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).y = (§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).y + 0.5 * param1;
                                             loop15:
                                             while(true)
                                             {
                                                addr323:
                                                while(true)
                                                {
                                                   §§push(this.§^!f§);
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      loop18:
                                                      while(_loc3_)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               this.§^!f§ = 0;
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ || _loc2_))
                                                                  {
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§;!_§);
                                                                           loop23:
                                                                           while(!_loc2_)
                                                                           {
                                                                              if(_loc3_ || param1)
                                                                              {
                                                                                 §§push(this.§5!$§);
                                                                                 if(_loc3_ || this)
                                                                                 {
                                                                                    if(!(_loc2_ && param1))
                                                                                    {
                                                                                       if(_loc3_ || _loc2_)
                                                                                       {
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             loop24:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc2_ && param1))
                                                                                                {
                                                                                                   this.§;!_§ = this.§5!$§;
                                                                                                   loop25:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr359:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr193:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            (§5!P§.getItemByName("Button_LeftMenuOpen") as §5!I§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                                            addr203:
                                                                                                            while(!(_loc2_ && param1))
                                                                                                            {
                                                                                                               (§5!P§.getItemByName("Button_RightMenuOpen") as §5!I§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc2_ && param1))
                                                                                                                  {
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  continue loop20;
                                                                                                               }
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            addr519:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc2_ && param1))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§;!_§);
                                                                                                                     addr468:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc3_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              §§push(this.§5!$§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                 {
                                                                                                                                    continue loop22;
                                                                                                                                 }
                                                                                                                                 while(!_loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop21;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(this.§^!f§);
                                                                                                                                    if(_loc3_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(0.5);
                                                                                                                                       if(_loc3_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * param1);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    §§pop().§^!f§ = §§pop();
                                                                                                                                    addr590:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       (§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).y = (§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).y - 0.5 * param1;
                                                                                                                                       break loop24;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr479:
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr555:
                                                                                                                        addr555:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_ || param1)
                                                                                                                           {
                                                                                                                              §§push(180);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       addr505:
                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                       {
                                                                                                                                          §§goto(addr568);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§^!f§);
                                                                                                                                          break loop23;
                                                                                                                                       }
                                                                                                                                       addr505:
                                                                                                                                    }
                                                                                                                                    §§goto(addr788);
                                                                                                                                 }
                                                                                                                                 §§goto(addr621);
                                                                                                                              }
                                                                                                                              addr563:
                                                                                                                           }
                                                                                                                           §§goto(addr647);
                                                                                                                        }
                                                                                                                        §§goto(addr568);
                                                                                                                     }
                                                                                                                     §§goto(addr796);
                                                                                                                  }
                                                                                                                  addr465:
                                                                                                               }
                                                                                                               §§goto(addr694);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                                addr263:
                                                                                                if(!(_loc3_ || _loc3_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   this.§;!_§ = 0;
                                                                                                   while(_loc2_)
                                                                                                   {
                                                                                                      loop34:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               loop35:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§;!_§);
                                                                                                                  if(_loc2_ && _loc2_)
                                                                                                                  {
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  §§push(0);
                                                                                                                  if(_loc3_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(!(_loc2_ && param1))
                                                                                                                     {
                                                                                                                        if(§§pop() < §§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    (§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).setVisibility(false);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr263);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc2_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(this);
                                                                                                                                                §§push(this.§;!_§);
                                                                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(0.5);
                                                                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * param1);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                }
                                                                                                                                                §§pop().§;!_§ = §§pop();
                                                                                                                                                continue loop34;
                                                                                                                                             }
                                                                                                                                             §§goto(addr783);
                                                                                                                                          }
                                                                                                                                          addr289:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr827);
                                                                                                                                 }
                                                                                                                                 §§goto(addr784);
                                                                                                                              }
                                                                                                                              §§goto(addr792);
                                                                                                                           }
                                                                                                                           addr248:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr193);
                                                                                                                        }
                                                                                                                        §§goto(addr787);
                                                                                                                     }
                                                                                                                     §§goto(addr563);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           if(§§pop() <= §§pop())
                                                                                                                           {
                                                                                                                              continue loop35;
                                                                                                                           }
                                                                                                                           §§goto(addr289);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr513:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr516);
                                                                                                                                 }
                                                                                                                                 §§goto(addr465);
                                                                                                                              }
                                                                                                                              §§goto(addr699);
                                                                                                                           }
                                                                                                                           addr513:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr284:
                                                                                                                  }
                                                                                                                  §§goto(addr751);
                                                                                                               }
                                                                                                               §§goto(addr763);
                                                                                                            }
                                                                                                            §§goto(addr665);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               (§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).setVisibility(true);
                                                                                                               §§goto(addr609);
                                                                                                            }
                                                                                                            addr602:
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr555);
                                                                                                      §§goto(addr272);
                                                                                                   }
                                                                                                   addr272:
                                                                                                   §§goto(addr193);
                                                                                                   addr215:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                {
                                                                                                   §§goto(addr505);
                                                                                                }
                                                                                                §§goto(addr700);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr359);
                                                                                       }
                                                                                       §§goto(addr765);
                                                                                    }
                                                                                    §§goto(addr750);
                                                                                 }
                                                                                 §§goto(addr479);
                                                                              }
                                                                              §§goto(addr741);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§goto(addr513);
                                                                                    §§push(180);
                                                                                 }
                                                                                 §§goto(addr698);
                                                                              }
                                                                              break;
                                                                              §§goto(addr505);
                                                                           }
                                                                           §§goto(addr618);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr330:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§;!_§);
                                                            continue loop17;
                                                         }
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop15;
                                                }
                                             }
                                          }
                                          §§goto(addr703);
                                       }
                                       §§goto(addr622);
                                    }
                                    §§goto(addr323);
                                 }
                                 §§goto(addr655);
                              }
                              §§goto(addr468);
                           }
                        }
                        §§goto(addr602);
                     }
                  }
                  while(_loc3_ || param1)
                  {
                     this.§!!,§ = 0;
                     §§goto(addr614);
                  }
               }
            }
         }
         §§goto(addr614);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            (§5!P§.getItemByName("Button_Play") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            while(true)
            {
               this.§]!X§ = false;
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            super.deActivate();
            if(_loc2_)
            {
               if(_loc2_ || _loc1_)
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
         if(_loc1_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(!(_loc7_ && param2))
         {
            §§push("OPEN_LEFT_MENU");
            if(_loc8_ || param3)
            {
               §§push(_loc6_);
               if(_loc8_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc8_ || param3)
                     {
                        §§push(0);
                        if(_loc7_ && param3)
                        {
                        }
                     }
                     else
                     {
                        addr546:
                        §§push(6);
                        if(!_loc8_)
                        {
                           addr671:
                        }
                     }
                     §§goto(addr676);
                  }
                  else
                  {
                     §§push("OPEN_RIGHT_MENU");
                     if(_loc8_ || param3)
                     {
                        §§push(_loc6_);
                        if(_loc8_ || param3)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc8_)
                              {
                                 §§push(1);
                                 if(!_loc8_)
                                 {
                                    addr585:
                                 }
                                 §§goto(addr676);
                              }
                              else
                              {
                                 addr605:
                                 §§push(9);
                                 if(!_loc7_)
                                 {
                                    addr608:
                                    §§goto(addr676);
                                 }
                                 else
                                 {
                                    §§goto(addr671);
                                 }
                              }
                              §§goto(addr676);
                           }
                           else
                           {
                              §§push("PLAY_LEVEL");
                              if(_loc8_ || param3)
                              {
                                 §§push(_loc6_);
                                 if(!(_loc7_ && this))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc8_)
                                       {
                                          §§push(2);
                                          if(!_loc8_)
                                          {
                                             addr480:
                                          }
                                       }
                                       §§goto(addr676);
                                    }
                                    else
                                    {
                                       §§push("OPEN_MENU");
                                       if(_loc8_)
                                       {
                                          §§push(_loc6_);
                                          if(!(_loc7_ && param3))
                                          {
                                             addr469:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc8_)
                                                {
                                                   §§push(3);
                                                   if(_loc8_ || this)
                                                   {
                                                      §§goto(addr480);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr608);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr546);
                                                }
                                                §§goto(addr676);
                                             }
                                             else
                                             {
                                                §§push("OPEN_AVATAR_CREATOR");
                                                if(!_loc7_)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc8_ || this)
                                                   {
                                                      addr492:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc7_ && this))
                                                         {
                                                            addr500:
                                                            §§push(4);
                                                            if(!(_loc8_ || this))
                                                            {
                                                               addr664:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr668:
                                                            §§push(12);
                                                            if(!_loc7_)
                                                            {
                                                               §§goto(addr671);
                                                            }
                                                         }
                                                         §§goto(addr676);
                                                      }
                                                      else
                                                      {
                                                         §§push("TOGGLE_SOUNDS");
                                                         if(_loc8_ || param2)
                                                         {
                                                            §§push(_loc6_);
                                                            if(!_loc7_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(5);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§goto(addr676);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr671);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr582:
                                                                     §§push(8);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§goto(addr585);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr608);
                                                                     }
                                                                  }
                                                                  §§goto(addr676);
                                                               }
                                                               else
                                                               {
                                                                  §§push("TOGGLE_PARTICLES");
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              §§goto(addr546);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr628);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("FULLSCREEN_BUTTON");
                                                                           if(_loc7_ && param1)
                                                                           {
                                                                           }
                                                                           addr612:
                                                                           §§push(_loc6_);
                                                                           if(!(_loc7_ && param2))
                                                                           {
                                                                              addr620:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(_loc8_ || param3)
                                                                                 {
                                                                                    addr628:
                                                                                    §§push(10);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr676);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr668);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push("POPUP_CREDITS_CLOSE");
                                                                                 if(!(_loc7_ && param3))
                                                                                 {
                                                                                    addr650:
                                                                                    §§push(_loc6_);
                                                                                    if(_loc8_ || this)
                                                                                    {
                                                                                       addr658:
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(11);
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§goto(addr664);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr671);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr668);
                                                                                          }
                                                                                          §§goto(addr676);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr666:
                                                                                          §§push("ME_POPUP_VIDEO");
                                                                                          §§push(_loc6_);
                                                                                       }
                                                                                       §§goto(addr668);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr666);
                                                                              }
                                                                              §§goto(addr668);
                                                                           }
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              §§goto(addr668);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr676:
                                                                              loop7:
                                                                              switch(§§pop())
                                                                              {
                                                                                 case 0:
                                                                                    addr367:
                                                                                    if(this.§,I§)
                                                                                    {
                                                                                       addr368:
                                                                                       this.§,I§ = false;
                                                                                       addr371:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.§,I§ = true;
                                                                                       addr362:
                                                                                    }
                                                                                    break;
                                                                                 case 1:
                                                                                    addr351:
                                                                                    if(this.§'3§)
                                                                                    {
                                                                                       addr352:
                                                                                       this.§'3§ = false;
                                                                                       addr355:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.§'3§ = true;
                                                                                       addr345:
                                                                                    }
                                                                                    break;
                                                                                 case 2:
                                                                                    § !Q§.playSound("Menu_Confirm");
                                                                                    mNextState = §0!`§.§?h§;
                                                                                    break;
                                                                                    addr328:
                                                                                    addr321:
                                                                                 case 3:
                                                                                    §5!P§.setItemVisibility("Container_MenuButtons",!§5!P§.getItemByName("Container_MenuButtons").visible);
                                                                                    break;
                                                                                    addr315:
                                                                                 case 4:
                                                                                    break;
                                                                                 case 5:
                                                                                    break;
                                                                                 case 6:
                                                                                    addr297:
                                                                                    §§push(§ _§.§1_§());
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr300:
                                                                                       §§push(!§§pop());
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          § _§.§"$§(_loc4_);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc7_ && param1))
                                                                                             {
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   §5!P§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr371);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr345);
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                          addr303:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr367);
                                                                                       }
                                                                                       §§goto(addr367);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr351);
                                                                                    }
                                                                                 case 7:
                                                                                    § !Q§.playSound("Menu_Confirm");
                                                                                    addr251:
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       AngryBirdsFP11.§3!a§.§8!d§();
                                                                                       addr237:
                                                                                       if(_loc8_ || this)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr328);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr261);
                                                                                    }
                                                                                    break;
                                                                                 case 8:
                                                                                    § !Q§.playSound("Menu_Confirm");
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr355);
                                                                                    }
                                                                                    break;
                                                                                 case 9:
                                                                                    § !Q§.playSound("Menu_Confirm");
                                                                                    mNextState = §!1§.§?h§;
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          if(!(_loc7_ && param3))
                                                                                          {
                                                                                             this.§,I§ = false;
                                                                                             addr190:
                                                                                             if(_loc8_ || param3)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr362);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr321);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr251);
                                                                                       }
                                                                                       §§goto(addr367);
                                                                                    }
                                                                                    break;
                                                                                    addr221:
                                                                                 case 10:
                                                                                    § !Q§.playSound("Menu_Confirm");
                                                                                    §§push(AngryBirdsFP11.§"!u§());
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       loop3:
                                                                                       while(_loc8_)
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc8_ || this)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   AngryBirdsFP11.§-#§(_loc5_);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      if(_loc7_ && this)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!(_loc7_ && param3))
                                                                                                            {
                                                                                                               if(_loc8_ || param2)
                                                                                                               {
                                                                                                                  if(!(_loc7_ && param1))
                                                                                                                  {
                                                                                                                     AngryBirdsFP11.playThemeMusic();
                                                                                                                     addr152:
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           addr107:
                                                                                                                           §5!P§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
                                                                                                                           break loop7;
                                                                                                                           addr114:
                                                                                                                        }
                                                                                                                        §§goto(addr368);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr352);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr237);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr190);
                                                                                                               }
                                                                                                               §§goto(addr367);
                                                                                                            }
                                                                                                            §§goto(addr152);
                                                                                                         }
                                                                                                         §§goto(addr107);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr297);
                                                                                                      }
                                                                                                   }
                                                                                                   addr161:
                                                                                                }
                                                                                                §§goto(addr303);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr221);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr300);
                                                                                    }
                                                                                    break;
                                                                                    addr185:
                                                                                    addr165:
                                                                                 case 11:
                                                                                    break;
                                                                                 case 12:
                                                                                    if(this.§@e§ == null)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          if(!(_loc7_ && param3))
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   this.§@e§ = new §?6§("http://www.youtube.com/v/-eyig_V-_5o");
                                                                                                   if(!(_loc7_ && this))
                                                                                                   {
                                                                                                      if(_loc8_ || param2)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            (§5!P§.getItemByName("MovieClip_YouTubeArea") as §[I§).changeMovieClip(this.§@e§);
                                                                                                            if(_loc8_ || this)
                                                                                                            {
                                                                                                               if(_loc8_ || this)
                                                                                                               {
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     (§5!P§.getItemByName("MovieClip_YouTubeArea") as §[I§).setVisibility(true);
                                                                                                                     if(!(_loc8_ || this))
                                                                                                                     {
                                                                                                                        break loop7;
                                                                                                                     }
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        break loop7;
                                                                                                                     }
                                                                                                                     addr372:
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr315);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr161);
                                                                                                               }
                                                                                                            }
                                                                                                            break loop7;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr169);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr185);
                                                                                                §§goto(addr165);
                                                                                             }
                                                                                             §§goto(addr152);
                                                                                          }
                                                                                          §§goto(addr114);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr372);
                                                                              }
                                                                              return;
                                                                              §§push(13);
                                                                           }
                                                                           §§goto(addr676);
                                                                        }
                                                                        §§goto(addr676);
                                                                     }
                                                                     §§goto(addr620);
                                                                  }
                                                                  §§goto(addr612);
                                                               }
                                                            }
                                                            addr579:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  §§goto(addr582);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr628);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push("CREDITS_BUTTON");
                                                               if(!(_loc7_ && param2))
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!(_loc7_ && param1))
                                                                        {
                                                                           §§goto(addr605);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr628);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("SOUNDS_BUTTON");
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§goto(addr612);
                                                                        }
                                                                        §§goto(addr650);
                                                                     }
                                                                     §§goto(addr676);
                                                                  }
                                                                  §§goto(addr658);
                                                               }
                                                               §§goto(addr666);
                                                            }
                                                            §§goto(addr676);
                                                         }
                                                         §§push(_loc6_);
                                                         if(!_loc7_)
                                                         {
                                                            addr561:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(7);
                                                                  if(_loc7_ && this)
                                                                  {
                                                                  }
                                                                  §§goto(addr676);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr668);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push("OPEN_CREDITS");
                                                               if(_loc8_)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(_loc8_)
                                                                  {
                                                                     §§goto(addr579);
                                                                  }
                                                               }
                                                               §§goto(addr666);
                                                            }
                                                            §§goto(addr668);
                                                         }
                                                         §§goto(addr658);
                                                      }
                                                   }
                                                   §§goto(addr561);
                                                }
                                                §§goto(addr612);
                                             }
                                          }
                                          §§goto(addr579);
                                       }
                                       §§goto(addr612);
                                    }
                                 }
                                 §§goto(addr492);
                              }
                              §§goto(addr612);
                           }
                        }
                        §§goto(addr620);
                     }
                     §§goto(addr666);
                  }
               }
               §§goto(addr469);
            }
            §§goto(addr666);
         }
         §§goto(addr500);
      }
   }
}
