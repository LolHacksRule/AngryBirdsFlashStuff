package §1!c§
{
   import §#!`§.§&!`§;
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§,6§;
   import §2u§.§7!m§;
   import §2u§.§]"%§;
   import §4!i§.§'!a§;
   import §[!Z§.§>D§;
   import flash.geom.Rectangle;
   
   public class §`!z§ extends §7X§
   {
      
      public static const §8"%§:String = "LevelStartState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §8"%§ = "LevelStartState";
         }
      }
      
      private var §%?§:Boolean = false;
      
      private var §]!t§:Boolean = false;
      
      private var §9!m§:§&!`§ = null;
      
      private var §68§:Boolean = false;
      
      private var §;!J§:Boolean = false;
      
      private var §6!Q§:Number = 0;
      
      private var §[C§:Number = 0;
      
      private var §[=§:Number = 0;
      
      private var §<!_§:Number = 0;
      
      private var §8!f§:Number;
      
      private var §0"7§:Number;
      
      private var §+!^§:Number;
      
      private var §1b§:Number;
      
      private var §5!1§:§'!a§;
      
      public function §`!z§(param1:§0![§, param2:§+f§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            loop0:
            while(true)
            {
               §^!T§ = new §9%§(this);
               loop1:
               while(true)
               {
                  §^!T§.init(§7I§.§7!%§.Views.View_LevelStart[0]);
                  while(true)
                  {
                     this.§9!m§ = new §&!`§(§@!S§.§2A§,§4a§);
                     loop3:
                     for(; _loc2_; while(_loc2_ || _loc1_)
                     {
                        if(!_loc1_)
                        {
                           this.§+!^§ = §^!T§.getItemByName("Button_LeftMenuOpen").y - 50;
                           continue;
                        }
                        continue loop0;
                     })
                     {
                        this.§8!f§ = (§^!T§.getItemByName("Container_MenuLeftButtons") as §,6§).height;
                        while(true)
                        {
                           this.§0"7§ = (§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).height;
                           continue loop3;
                        }
                     }
                     continue loop1;
                     addr44:
                     if(_loc2_ || this)
                     {
                        return;
                        addr51:
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§1b§ = §^!T§.getItemByName("Button_RightMenuOpen").y - 50;
            if(_loc1_)
            {
               continue;
            }
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  §§goto(addr44);
               }
               §§goto(addr100);
            }
            §§goto(addr81);
         }
         §§goto(addr51);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §@!S§.§2A§.§`!V§(true);
               while(true)
               {
                  §@!S§.setController(this.§9!m§);
                  while(!_loc3_)
                  {
                     if(_loc2_)
                     {
                        this.§9!m§.init();
                        while(!(_loc3_ && _loc2_))
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              return;
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            § !4§.§%"7§.§get §();
            loop5:
            while(true)
            {
               §^!T§.getItemByName("MovieClip_SoundsOff").setVisibility(!§ !4§.§4E§());
               while(true)
               {
                  §^!T§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§@!S§.§^"&§());
                  while(_loc2_)
                  {
                     if(!_loc3_)
                     {
                        §^!T§.getItemByName("Button_MEBuy").setVisibility(!!§ !4§.§%"7§.§@D§.userProgress.§"W§ ? false : true);
                        if(!_loc2_)
                        {
                           continue;
                        }
                        §§goto(addr39);
                        continue;
                     }
                     continue loop5;
                  }
               }
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.update(param1);
            while(true)
            {
               this.§+!^§ = §^!T§.getItemByName("Button_LeftMenuOpen").y - 50;
               addr85:
               while(_loc3_)
               {
               }
            }
         }
         while(true)
         {
            this.§1b§ = §^!T§.getItemByName("Button_RightMenuOpen").y - 50;
            loop3:
            while(!_loc2_)
            {
               this.§7!§(param1);
               while(!this.§]!t§)
               {
                  if(!_loc2_)
                  {
                     §@!S§.controller.update(param1);
                  }
                  if(_loc3_)
                  {
                     if(!_loc3_)
                     {
                        continue loop3;
                     }
                     §§goto(addr20);
                     continue loop3;
                  }
               }
               return;
            }
            §§goto(addr85);
         }
      }
      
      private function §7!§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            (§^!T§.getItemByName("Container_MenuLeftButtons") as §,6§).mClip.scrollRect = new Rectangle(0,0,(§^!T§.getItemByName("Container_MenuLeftButtons") as §,6§).width,this.§8!f§ + 20 - (this.§8!f§ - this.§[=§));
            loop0:
            while(true)
            {
               (§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).mClip.scrollRect = new Rectangle(0,0,(§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).width,this.§0"7§ + 20 - (this.§0"7§ - this.§<!_§));
               loop1:
               while(true)
               {
                  §§push(this.§68§);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(this.§6!Q§);
                        loop3:
                        while(true)
                        {
                           if(!_loc2_)
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
                                       §§push(this.§6!Q§);
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§push(0.3);
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§push(§§pop() * param1);
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§pop().§6!Q§ = §§pop();
                                       addr756:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr734:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§6!Q§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop9:
                                       while(true)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             loop10:
                                             while(!_loc2_)
                                             {
                                                this.§6!Q§ = 0;
                                                loop11:
                                                while(true)
                                                {
                                                   addr684:
                                                   while(true)
                                                   {
                                                      §§push(this.§[=§);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         loop14:
                                                         while(!(_loc2_ && _loc3_))
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(this.§[=§);
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     §§push(0.5);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(§§pop() * param1);
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                  }
                                                                  §§pop().§[=§ = §§pop();
                                                                  addr713:
                                                                  addr261:
                                                                  while(true)
                                                                  {
                                                                     loop38:
                                                                     while(!(_loc2_ && _loc3_))
                                                                     {
                                                                        this.§<!_§ = this.§0"7§;
                                                                        loop39:
                                                                        while(true)
                                                                        {
                                                                           loop40:
                                                                           while(true)
                                                                           {
                                                                              addr195:
                                                                              addr669:
                                                                              loop41:
                                                                              while(true)
                                                                              {
                                                                                 (§^!T§.getItemByName("Button_LeftMenuOpen") as §]"%§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                 loop42:
                                                                                 while(!_loc2_)
                                                                                 {
                                                                                    (§^!T§.getItemByName("Button_RightMenuOpen") as §]"%§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                    loop43:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc2_ && param1)
                                                                                       {
                                                                                          continue loop42;
                                                                                       }
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          addr176:
                                                                                          if(_loc3_ || _loc2_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr185:
                                                                                                if(!(_loc2_ && param1))
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      (§^!T§.getItemByName("Button_LeftMenuOpen") as §]"%§).mClip.MovieClip_LeftMenuImage.rotation = this.§6!Q§;
                                                                                                      loop44:
                                                                                                      for(; !(_loc2_ && _loc2_); if(_loc2_ && _loc3_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      },if(_loc3_)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               if(_loc3_ || _loc2_)
                                                                                                               {
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               §§goto(addr813);
                                                                                                            }
                                                                                                            §§goto(addr598);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               if(_loc3_ || _loc3_)
                                                                                                               {
                                                                                                                  §§goto(addr541);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         §§goto(addr807);
                                                                                                         addr581:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr336);
                                                                                                      },§§goto(addr629))
                                                                                                      {
                                                                                                         (§^!T§.getItemByName("Button_RightMenuOpen") as §]"%§).mClip.MovieClip_RightMenuImage.rotation = this.§[C§;
                                                                                                         loop45:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               continue loop43;
                                                                                                            }
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               this.§<!_§ = 0;
                                                                                                               addr282:
                                                                                                               break loop44;
                                                                                                               addr282:
                                                                                                            }
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§^!T§.getItemByName("Container_MenuLeftButtons") as §,6§);
                                                                                                                     §§push(this.§+!^§);
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - this.§[=§);
                                                                                                                     }
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc2_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           addr683:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.§[=§ = 0;
                                                                                                                              break loop43;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           loop31:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              (§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).y = (§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).y + 0.5 * param1;
                                                                                                                              addr366:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc2_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                                 addr418:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(this.§[C§);
                                                                                                                                    if(_loc3_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(0.5);
                                                                                                                                       if(!(_loc2_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * param1);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                    }
                                                                                                                                    §§pop().§[C§ = §§pop();
                                                                                                                                    continue loop31;
                                                                                                                                 }
                                                                                                                                 §§goto(addr176);
                                                                                                                              }
                                                                                                                              continue loop11;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop39;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§[C§ = 180;
                                                                                                                     addr563:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr485:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§<!_§);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr560:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  loop37:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        continue loop38;
                                                                                                                     }
                                                                                                                     loop57:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§<!_§);
                                                                                                                        loop58:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              loop59:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc2_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                    {
                                                                                                                                       loop47:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(this);
                                                                                                                                             §§push(this.§<!_§);
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(0.5);
                                                                                                                                                if(_loc3_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * param1);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                             }
                                                                                                                                             §§pop().§<!_§ = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr321:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                (§^!T§.getItemByName("Container_MenuLeftButtons") as §,6§).setVisibility(true);
                                                                                                                                                break loop47;
                                                                                                                                             }
                                                                                                                                             addr840:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§6!Q§);
                                                                                                                                          addr811:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(90);
                                                                                                                                             addr812:
                                                                                                                                             while(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this);
                                                                                                                                                   §§push(this.§6!Q§);
                                                                                                                                                   if(!(_loc2_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(0.3);
                                                                                                                                                      if(_loc3_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * param1);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                   }
                                                                                                                                                   §§pop().§6!Q§ = §§pop();
                                                                                                                                                   addr835:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      break loop45;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             break loop45;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr302:
                                                                                                                                       addr847:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§<!_§);
                                                                                                                                       if(!(_loc3_ || _loc2_))
                                                                                                                                       {
                                                                                                                                          continue loop58;
                                                                                                                                       }
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                continue loop13;
                                                                                                                                             }
                                                                                                                                             addr444:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop8;
                                                                                                                                                }
                                                                                                                                                addr668:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   break loop41;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop8;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc3_ || param1)
                                                                                                                                             {
                                                                                                                                                continue loop3;
                                                                                                                                             }
                                                                                                                                             addr544:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(180);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop3;
                                                                                                                                          addr386:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          loop34:
                                                                                                                                          while(_loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             while(!(_loc2_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(§§pop() >= §§pop())
                                                                                                                                                {
                                                                                                                                                   continue loop57;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_ || param1)
                                                                                                                                                   {
                                                                                                                                                      this.§[C§ = 0;
                                                                                                                                                      continue loop37;
                                                                                                                                                   }
                                                                                                                                                   addr629:
                                                                                                                                                   addr774:
                                                                                                                                                   loop50:
                                                                                                                                                   while(!(_loc2_ && param1))
                                                                                                                                                   {
                                                                                                                                                      continue loop0;
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         (§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).setVisibility(true);
                                                                                                                                                         continue loop50;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this);
                                                                                                                                                      §§push(this.§[=§);
                                                                                                                                                      if(_loc3_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(0.5);
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * param1);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                      }
                                                                                                                                                      §§pop().§[=§ = §§pop();
                                                                                                                                                      addr791:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr757:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§[=§);
                                                                                                                                                            addr760:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§8!f§);
                                                                                                                                                               addr762:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        this.§[=§ = this.§8!f§;
                                                                                                                                                                        addr767:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr763:
                                                                                                                                                                  }
                                                                                                                                                                  loop26:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr616:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§;!J§);
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr386);
                                                                                                                                                                           §§push(this.§[C§);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr622);
                                                                                                                                                                        continue loop26;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop2;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop59;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc2_ && _loc2_)
                                                                                                                                                {
                                                                                                                                                   loop66:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc3_ || _loc2_))
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr560);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr485);
                                                                                                                                                      }
                                                                                                                                                      addr597:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(this.§[C§);
                                                                                                                                                               if(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0.5);
                                                                                                                                                                  if(!(_loc2_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * param1);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§pop().§[C§ = §§pop();
                                                                                                                                                               break loop42;
                                                                                                                                                            }
                                                                                                                                                            addr598:
                                                                                                                                                         }
                                                                                                                                                         addr541:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr544);
                                                                                                                                                         }
                                                                                                                                                         continue loop66;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop14;
                                                                                                                                                   addr545:
                                                                                                                                                }
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr418);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop34;
                                                                                                                                                   }
                                                                                                                                                   addr322:
                                                                                                                                                }
                                                                                                                                                §§goto(addr328);
                                                                                                                                             }
                                                                                                                                             addr328:
                                                                                                                                             continue loop4;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§8!f§);
                                                                                                                                             addr773:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr774);
                                                                                                                                                }
                                                                                                                                                §§goto(addr757);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr771:
                                                                                                                                       }
                                                                                                                                       §§goto(addr545);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§0"7§);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc2_ && param1))
                                                                                                                                             {
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this);
                                                                                                                                                         §§push(this.§<!_§);
                                                                                                                                                         if(!(_loc2_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(0.5);
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * param1);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                         }
                                                                                                                                                         §§pop().§<!_§ = §§pop();
                                                                                                                                                         addr519:
                                                                                                                                                         while(_loc3_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc2_ && this))
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr444);
                                                                                                                                                                  }
                                                                                                                                                                  addr441:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr791);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr622);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr563);
                                                                                                                                                      }
                                                                                                                                                      addr502:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr441);
                                                                                                                                                }
                                                                                                                                                §§goto(addr773);
                                                                                                                                             }
                                                                                                                                             §§push(this.§0"7§);
                                                                                                                                             addr463:
                                                                                                                                             break;
                                                                                                                                             if(_loc3_ || this)
                                                                                                                                             {
                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                {
                                                                                                                                                   continue loop38;
                                                                                                                                                }
                                                                                                                                                continue loop40;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr762);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(_loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr597);
                                                                                                                                             §§push(180);
                                                                                                                                          }
                                                                                                                                          §§goto(addr760);
                                                                                                                                          addr594:
                                                                                                                                       }
                                                                                                                                       §§goto(addr597);
                                                                                                                                       §§goto(addr485);
                                                                                                                                    }
                                                                                                                                    addr488:
                                                                                                                                 }
                                                                                                                                 §§goto(addr328);
                                                                                                                              }
                                                                                                                              addr294:
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr488);
                                                                                                            }
                                                                                                            §§goto(addr302);
                                                                                                            if(!(_loc2_ && _loc3_))
                                                                                                            {
                                                                                                               continue loop44;
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§6!Q§);
                                                                                                            addr795:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(90);
                                                                                                               addr796:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop() > §§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc2_ && _loc2_))
                                                                                                                     {
                                                                                                                        this.§6!Q§ = 90;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr807:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr771);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      if(!(_loc2_ && this))
                                                                                                      {
                                                                                                         continue loop41;
                                                                                                      }
                                                                                                      §§goto(addr502);
                                                                                                   }
                                                                                                   §§goto(addr767);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr519);
                                                                                          }
                                                                                          §§goto(addr366);
                                                                                       }
                                                                                       §§goto(addr321);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc2_ && param1))
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             if(!(_loc2_ && this))
                                                                                             {
                                                                                                §§goto(addr616);
                                                                                             }
                                                                                             §§goto(addr835);
                                                                                          }
                                                                                          §§goto(addr763);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr734);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    (§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).y = (§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).y - 0.5 * param1;
                                                                                    §§goto(addr581);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             (§^!T§.getItemByName("Container_MenuLeftButtons") as §,6§).setVisibility(false);
                                                                                          }
                                                                                          §§goto(addr683);
                                                                                       }
                                                                                       §§goto(addr616);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr812);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr796);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  if(_loc2_ && _loc2_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!(_loc2_ && param1))
                                                                  {
                                                                     (§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).setVisibility(false);
                                                                     §§goto(addr282);
                                                                  }
                                                                  §§goto(addr847);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr668);
                                                               §§goto(addr713);
                                                            }
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr756);
                                          }
                                          §§goto(addr684);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr795);
                        }
                     }
                     §§goto(addr840);
                  }
                  if(!(_loc2_ && this))
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr791);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§^!T§.getItemByName("Button_Play") as §]"%§).setComponentVisualState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
            while(true)
            {
               this.§%?§ = false;
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     super.deActivate();
                     if(!(_loc1_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(_loc7_)
         {
            if("OPEN_LEFT_MENU" === _loc6_)
            {
               if(_loc7_ || param3)
               {
                  §§push(0);
                  if(!_loc7_)
                  {
                     addr491:
                  }
               }
               else
               {
                  addr502:
                  §§push(9);
                  if(_loc7_ || this)
                  {
                     addr510:
                  }
               }
            }
            else if("OPEN_RIGHT_MENU" === _loc6_)
            {
               if(_loc7_)
               {
                  §§push(1);
                  if(_loc7_ || this)
                  {
                  }
                  §§goto(addr565);
               }
               else
               {
                  §§goto(addr418);
               }
            }
            else if("PLAY_LEVEL" === _loc6_)
            {
               if(!(_loc8_ && param3))
               {
                  §§push(2);
                  if(!(_loc7_ || param1))
                  {
                     addr444:
                  }
               }
               else
               {
                  §§goto(addr418);
               }
            }
            else if("OPEN_MENU" === _loc6_)
            {
               if(!_loc8_)
               {
                  addr418:
                  §§push(3);
                  if(_loc8_)
                  {
                  }
                  §§goto(addr565);
               }
               else
               {
                  addr427:
                  §§push(4);
                  if(!_loc7_)
                  {
                     §§goto(addr491);
                  }
               }
            }
            else if("OPEN_AVATAR_CREATOR" === _loc6_)
            {
               if(!_loc8_)
               {
                  §§goto(addr427);
               }
               else
               {
                  addr455:
                  §§push(6);
                  if(_loc8_ && param2)
                  {
                  }
               }
            }
            else if("TOGGLE_SOUNDS" === _loc6_)
            {
               if(_loc7_ || param2)
               {
                  §§push(5);
                  if(!_loc8_)
                  {
                     §§goto(addr444);
                  }
                  else
                  {
                     §§goto(addr510);
                  }
               }
               else
               {
                  addr483:
                  §§push(8);
                  if(_loc7_ || param1)
                  {
                     §§goto(addr491);
                  }
                  else
                  {
                     §§goto(addr560);
                  }
               }
            }
            else if("TOGGLE_PARTICLES" === _loc6_)
            {
               if(_loc7_ || param1)
               {
                  §§goto(addr455);
               }
               else
               {
                  §§goto(addr483);
               }
            }
            else if("FULLSCREEN_BUTTON" === _loc6_)
            {
               if(!_loc8_)
               {
                  §§push(7);
                  if(_loc8_ && param2)
                  {
                     addr543:
                  }
               }
               else
               {
                  addr516:
                  §§push(10);
                  if(_loc8_ && param1)
                  {
                     §§goto(addr560);
                  }
               }
            }
            else if("OPEN_CREDITS" === _loc6_)
            {
               if(_loc7_)
               {
                  §§goto(addr483);
               }
               else
               {
                  §§goto(addr502);
               }
            }
            else if("CREDITS_BUTTON" === _loc6_)
            {
               if(!(_loc8_ && param1))
               {
                  §§goto(addr502);
               }
               else
               {
                  §§goto(addr516);
               }
            }
            else if("SOUNDS_BUTTON" === _loc6_)
            {
               if(!_loc8_)
               {
                  §§goto(addr516);
               }
               else
               {
                  addr535:
                  §§push(11);
                  if(!(_loc8_ && param2))
                  {
                     §§goto(addr543);
                  }
               }
            }
            else
            {
               if("POPUP_CREDITS_CLOSE" === _loc6_)
               {
                  if(_loc7_ || param3)
                  {
                     §§goto(addr535);
                  }
               }
               else if("ME_POPUP_VIDEO" !== _loc6_)
               {
                  addr565:
                  loop9:
                  switch(§§pop())
                  {
                     case 0:
                        addr354:
                        if(this.§68§)
                        {
                           addr355:
                           this.§68§ = false;
                           addr358:
                        }
                        else
                        {
                           this.§68§ = true;
                           addr349:
                        }
                        break;
                     case 1:
                        addr331:
                        §§push(this.§;!J§);
                        if(!(_loc8_ && param1))
                        {
                           if(§§pop())
                           {
                              addr339:
                              this.§;!J§ = false;
                              addr342:
                           }
                           else
                           {
                              this.§;!J§ = true;
                              addr325:
                           }
                           addr312:
                           break;
                        }
                        §§goto(addr354);
                        break;
                     case 2:
                        §>D§.§9!q§("Menu_Confirm");
                        §7"6§(StateEpisodeSelection.§8"%§);
                        addr309:
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§goto(addr342);
                        break;
                        addr318:
                     case 3:
                        §^!T§.setItemVisibility("Container_MenuButtons",!§^!T§.getItemByName("Container_MenuButtons").visible);
                        addr301:
                        if(_loc7_)
                        {
                           break;
                        }
                        §§goto(addr318);
                        break;
                     case 4:
                        break;
                     case 5:
                        break;
                     case 6:
                        addr278:
                        _loc4_ = !§@!S§.§^"&§();
                        §@!S§.§'"%§(_loc4_);
                        if(!_loc8_)
                        {
                           §^!T§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                           if(!(_loc8_ && param3))
                           {
                              break;
                           }
                           break;
                        }
                        §§goto(addr355);
                        break;
                        addr289:
                        addr277:
                     case 7:
                        §>D§.§9!q§("Menu_Confirm");
                        addr235:
                        § !4§.§%"7§.§]!;§();
                        addr236:
                        if(_loc7_)
                        {
                           break;
                        }
                        §§goto(addr309);
                        break;
                        addr245:
                     case 8:
                        §>D§.§9!q§("Menu_Confirm");
                        break;
                        addr231:
                     case 9:
                        §>D§.§9!q§("Menu_Confirm");
                        addr222:
                        if(!_loc8_)
                        {
                           §7"6§(§1!Z§.§8"%§);
                           this.§68§ = false;
                           addr195:
                           if(_loc7_ || param3)
                           {
                              if(!(_loc8_ && param3))
                              {
                                 break;
                              }
                              §§goto(addr245);
                           }
                           else
                           {
                              §§goto(addr231);
                           }
                           addr215:
                        }
                        §§goto(addr236);
                     case 10:
                        §>D§.§9!q§("Menu_Confirm");
                        while(true)
                        {
                           if(_loc7_)
                           {
                              §§push(§ !4§.§4E§());
                              if(!_loc8_)
                              {
                                 if(_loc7_)
                                 {
                                    if(_loc7_ || param2)
                                    {
                                       §§push(!§§pop());
                                       loop1:
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                          addr177:
                                          while(true)
                                          {
                                             if(!_loc8_)
                                             {
                                                if(_loc7_)
                                                {
                                                   § !4§.setSoundsEnabled(_loc5_);
                                                   while(true)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr289);
                                                      }
                                                   }
                                                   addr156:
                                                }
                                                else
                                                {
                                                   §§goto(addr339);
                                                }
                                                §§goto(addr312);
                                             }
                                             else
                                             {
                                                §§goto(addr215);
                                             }
                                          }
                                          §§goto(addr195);
                                       }
                                       addr176:
                                    }
                                    else
                                    {
                                       §§goto(addr331);
                                    }
                                    §§goto(addr355);
                                 }
                                 else
                                 {
                                    §§goto(addr277);
                                 }
                              }
                              §§goto(addr176);
                           }
                           else
                           {
                              §§goto(addr301);
                           }
                        }
                        §§goto(addr278);
                     case 11:
                        break;
                     case 12:
                        if(this.§5!1§ == null)
                        {
                           loop3:
                           while(!_loc8_)
                           {
                              this.§5!1§ = new §'!a§("http://www.youtube.com/v/-eyig_V-_5o");
                              loop4:
                              while(true)
                              {
                                 addr67:
                                 while(true)
                                 {
                                    (§^!T§.getItemByName("MovieClip_YouTubeArea") as §7!m§).changeMovieClip(this.§5!1§);
                                    if(_loc8_ && param1)
                                    {
                                       break loop9;
                                    }
                                    if(_loc8_)
                                    {
                                       break loop4;
                                    }
                                    (§^!T§.getItemByName("MovieClip_YouTubeArea") as §7!m§).setVisibility(true);
                                    if(!(_loc7_ || this))
                                    {
                                       break loop9;
                                    }
                                    continue loop4;
                                 }
                                 continue loop3;
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr359);
                  }
                  return;
                  §§push(13);
               }
               §§goto(addr565);
               if(!_loc8_)
               {
                  §§goto(addr560);
               }
            }
            §§goto(addr565);
         }
         §§goto(addr535);
      }
   }
}
