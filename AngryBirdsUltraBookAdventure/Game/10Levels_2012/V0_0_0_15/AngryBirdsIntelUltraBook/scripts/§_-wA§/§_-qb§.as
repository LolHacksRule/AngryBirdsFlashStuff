package §_-wA§
{
   import §_-01E§.§_-5b§;
   import §_-01E§.§_-M3§;
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-0EZ§.§_-48§;
   import §_-0EZ§.§_-Dk§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-gt§;
   import §_-6C§.§_-k6§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-rD§;
   import §_-Yl§.§_-5q§;
   import §_-hX§.§_-bT§;
   import §_-hX§.§_-pI§;
   import §_-hX§.§_-yo§;
   import §_-mh§.§_-09d§;
   import §_-qO§.§ in§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §_-qb§
   {
       
      
      private var §_-s0§:§_-5q§;
      
      private var §_-KW§:§_-48§;
      
      private var §_-0n§:§_-dd§;
      
      private var §_-01n§:§_-dd§;
      
      private var §_-xB§:Number;
      
      private var §_-1T§:Number;
      
      private var §_-t-§:§_-pI§;
      
      private var §_-HQ§:§_-yo§;
      
      private var §_-OC§:Boolean = false;
      
      private var §_-01Y§:Boolean;
      
      private var §_-ji§:§_-5b§;
      
      private var §_-09N§:int;
      
      private var §_-0AJ§:§_-5b§;
      
      private var §_-ek§:int = -1;
      
      private var §_-eY§:Array;
      
      private var §_-oY§:String;
      
      private var §_-EO§:§_-5b§;
      
      private var §_-75§:§_-gt§;
      
      private var §_-08W§:§_-gt§;
      
      private var §_-0-g§:§_-rD§;
      
      private var §_-sC§:§_-k6§;
      
      private var §_-NE§:§_-k6§;
      
      private var §_-00o§:§_-k6§;
      
      private var §_-6g§:§_-k6§;
      
      private var §_-90§:§_-k6§;
      
      private var §_-ME§:§_-k6§;
      
      private var §_-hY§:§_-0Eo§;
      
      private var §_-eT§:§_-0Eo§;
      
      private var §_-0CA§:§_-0Eo§;
      
      private var §_-0Aq§:§_-0Eo§;
      
      private var §_-04p§:§_-0Eo§;
      
      private var §_-wo§:§_-0Eo§;
      
      public function §_-qb§(param1:§_-5q§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-eY§ = [];
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§_-s0§ = param1;
                  while(!(_loc2_ && param1))
                  {
                     this.§_-xB§ = this.§_-08W§.x;
                     loop4:
                     while(_loc3_)
                     {
                        if(_loc3_)
                        {
                           this.§_-1T§ = this.§_-0-g§.y;
                           if(!(_loc2_ && _loc2_))
                           {
                              addr52:
                              if(_loc2_ && this)
                              {
                                 while(true)
                                 {
                                    this.§_-Oe§();
                                    break loop4;
                                    §§goto(addr52);
                                 }
                                 addr96:
                              }
                              return;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      private function §_-Oe§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-08W§ = this.§_-s0§.getItemByName("Container_VsHero") as §_-gt§;
            while(true)
            {
               this.§_-0-g§ = this.§_-s0§.getItemByName("Container_VsEnemy") as §_-gt§;
               loop1:
               while(true)
               {
                  this.§_-75§ = this.§_-s0§.getItemByName("Container_Vs") as §_-gt§;
                  loop2:
                  while(true)
                  {
                     this.§_-sC§ = this.§_-s0§.getItemByName("MovieClip_VsAnimation") as §_-k6§;
                     while(true)
                     {
                        this.§_-NE§ = this.§_-s0§.getItemByName("MovieClip_Boom") as §_-k6§;
                        while(true)
                        {
                           this.§_-00o§ = this.§_-s0§.getItemByName("MovieClip_VsProfilePicHero") as §_-k6§;
                           continue loop1;
                           addr46:
                           if(_loc1_ || this)
                           {
                              return;
                              addr53:
                           }
                        }
                        addr176:
                        while(_loc1_ || this)
                        {
                           this.§_-90§ = this.§_-s0§.getItemByName("MovieClip_CrownHero") as §_-k6§;
                           loop7:
                           while(true)
                           {
                              this.§_-ME§ = this.§_-s0§.getItemByName("MovieClip_CrownEnemy") as §_-k6§;
                              while(_loc1_)
                              {
                                 this.§_-hY§ = this.§_-s0§.getItemByName("TextField_VsScore") as §_-0Eo§;
                                 loop9:
                                 while(true)
                                 {
                                    this.§_-eT§ = this.§_-s0§.getItemByName("TextField_VsScoreEnemy") as §_-0Eo§;
                                    loop10:
                                    while(true)
                                    {
                                       this.§_-0CA§ = this.§_-s0§.getItemByName("TextField_NameHero") as §_-0Eo§;
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc1_)
                                             {
                                                addr107:
                                                break;
                                             }
                                             if(_loc1_ || this)
                                             {
                                                this.§_-0Aq§ = this.§_-s0§.getItemByName("TextField_NameEnemy") as §_-0Eo§;
                                                while(_loc1_)
                                                {
                                                   continue loop9;
                                                }
                                                continue;
                                                addr84:
                                             }
                                             continue loop1;
                                          }
                                          continue loop10;
                                       }
                                       continue loop7;
                                    }
                                 }
                                 §§goto(addr53);
                              }
                              continue loop2;
                           }
                           if(!(_loc1_ || this))
                           {
                              continue;
                           }
                           §§goto(addr46);
                        }
                     }
                  }
               }
               if(!(_loc1_ || this))
               {
                  continue;
               }
               §§goto(addr74);
            }
         }
         §§goto(addr144);
      }
      
      public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc1_)
         {
            §§push(this.§_-0n§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr38:
                     this.§_-0n§.play();
                     if(!(_loc3_ && this))
                     {
                        addr46:
                        §§push(this.§_-01n§);
                        if(!_loc3_)
                        {
                           if(§§pop())
                           {
                              addr66:
                              if(!_loc3_)
                              {
                                 addr63:
                                 §§push(this.§_-01n§);
                              }
                              var _loc1_:MovieClip = this.§_-s0§.getItemByName("PlayerNameMask").mClip;
                              §§push((AngryBirdsFP11.sUserProgress as §_-09d§).userName);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                              }
                              var _loc2_:* = §§pop();
                              if(!(_loc3_ && this))
                              {
                                 this.§_-07m§(_loc2_,this.§_-0CA§,_loc1_);
                                 while(this.§_-EO§)
                                 {
                                    if(!_loc3_)
                                    {
                                       this.§_-07m§(this.§_-EO§.userName,this.§_-0Aq§,this.§_-s0§.getItemByName("EnemyNameMask").mClip);
                                    }
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       addr129:
                                       break;
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr66);
                        }
                        §§pop().play();
                        §§goto(addr66);
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr66);
               }
               §§goto(addr46);
            }
            §§goto(addr38);
         }
         §§goto(addr66);
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§_-0n§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr122:
                     §§push(this.§_-0n§);
                     while(true)
                     {
                        §§pop().pause();
                     }
                     addr122:
                  }
                  while(true)
                  {
                     §§push(this.§_-0n§);
                     if(!_loc1_)
                     {
                        §§pop().§_-04E§ = false;
                        while(true)
                        {
                           addr67:
                           if(!(_loc1_ && _loc1_))
                           {
                              §§goto(addr25);
                           }
                        }
                        addr107:
                     }
                     else
                     {
                        §§goto(addr122);
                     }
                  }
                  addr123:
               }
               loop2:
               while(true)
               {
                  §§push(this.§_-01n§);
                  loop3:
                  while(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§push(this.§_-01n§);
                        loop5:
                        while(true)
                        {
                           §§pop().pause();
                           while(true)
                           {
                              if(_loc2_ || this)
                              {
                                 §§push(this.§_-01n§);
                                 if(!(_loc2_ || this))
                                 {
                                    continue loop5;
                                 }
                                 if(_loc1_)
                                 {
                                    continue loop3;
                                 }
                                 §§pop().§_-04E§ = false;
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr67);
                              }
                              else
                              {
                                 §§goto(addr123);
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  addr25:
                  return;
               }
            }
         }
         §§goto(addr122);
      }
      
      public function levelStarted(param1:§_-48§, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§_-oY§ = param2;
            while(true)
            {
               this.§_-hs§();
               loop1:
               while(true)
               {
                  this.§_-TS§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§_-0-g§);
                     while(true)
                     {
                        §§pop().setVisibility(true);
                        while(true)
                        {
                           this.§_-75§.setVisibility(false);
                           loop5:
                           while(!_loc3_)
                           {
                              this.§_-KW§ = param1;
                              addr101:
                              if(_loc4_ || param1)
                              {
                                 this.§_-08W§.x = this.§_-xB§;
                                 loop18:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop1;
                                    }
                                    loop16:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr147:
                                          if(!(_loc3_ && param1))
                                          {
                                             if(!_loc3_)
                                             {
                                                addr156:
                                                if(_loc4_ || this)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   this.§_-09N§ = -1;
                                                   while(true)
                                                   {
                                                      if(_loc4_ || param1)
                                                      {
                                                         §§goto(addr101);
                                                      }
                                                      else
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(this.§_-sC§);
                                                            while(true)
                                                            {
                                                               §§pop().§_-0Du§("Start");
                                                               addr171:
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-sC§);
                                                                  if(_loc3_ && _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr129:
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     §§push(true);
                                                                     if(_loc4_ || param2)
                                                                     {
                                                                        §§pop().§_-3t§ = §§pop();
                                                                        continue loop16;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(true);
                                                                        §§goto(addr129);
                                                                     }
                                                                     addr175:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop().setVisibility(§§pop());
                                                                     continue loop13;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr36:
                                                      if(!(_loc3_ && this))
                                                      {
                                                         this.§_-02P§();
                                                         addr43:
                                                         if(!_loc3_)
                                                         {
                                                            return;
                                                            addr34:
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  addr73:
                                                                  while(true)
                                                                  {
                                                                     this.§_-01n§ = null;
                                                                     continue loop20;
                                                                  }
                                                               }
                                                               continue loop18;
                                                            }
                                                            §§goto(addr36);
                                                            §§goto(addr43);
                                                         }
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                                while(_loc4_)
                                                {
                                                   this.§_-ek§ = -1;
                                                   §§goto(addr156);
                                                }
                                                while(true)
                                                {
                                                   this.§_-OC§ = false;
                                                   break loop16;
                                                }
                                                addr192:
                                                addr216:
                                             }
                                             while(true)
                                             {
                                                this.§_-eY§ = [];
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr175);
                                             §§goto(addr147);
                                          }
                                       }
                                       §§goto(addr171);
                                    }
                                    while(_loc4_)
                                    {
                                       this.§_-0AJ§ = null;
                                       §§goto(addr192);
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        addr89:
                        §§push(this.§_-0-g§);
                        if(!_loc4_)
                        {
                           continue;
                        }
                        §§pop().y = this.§_-1T§;
                        §§goto(addr73);
                     }
                  }
               }
            }
         }
         §§goto(addr216);
      }
      
      private function initialize() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         if(!_loc6_)
         {
            this.§_-S3§();
         }
         var _loc1_:MovieClip = this.§_-s0§.getItemByName("PlayerNameMask").mClip;
         §§push((AngryBirdsFP11.sUserProgress as §_-09d§).userName);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc6_ && _loc1_))
         {
            §§push(this.§_-07m§(_loc2_,this.§_-0CA§,_loc1_));
            if(!_loc6_)
            {
               §§push(§§pop());
            }
            _loc2_ = §§pop();
            if(_loc7_)
            {
               addr58:
               this.§_-0AJ§ = null;
            }
            §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§_-oY§));
            if(!(_loc6_ && _loc3_))
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(_loc7_)
            {
               this.§_-ji§ = this.§_-KW§.§_-YX§();
               loop0:
               while(true)
               {
                  §§push(this.§_-ji§);
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc7_ || _loc3_)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     §§push(1);
                     loop15:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        loop16:
                        while(true)
                        {
                           §§push(this.§_-0-g§);
                           if(_loc7_)
                           {
                              §§push(false);
                              if(!_loc6_)
                              {
                                 §§pop().setVisibility(§§pop());
                                 loop13:
                                 for(; _loc7_ || _loc3_; while(true)
                                 {
                                    if(!(_loc7_ || _loc2_))
                                    {
                                       continue loop13;
                                    }
                                    this.§_-08W§.x = this.§_-0-g§.x;
                                    §§goto(addr153);
                                 })
                                 {
                                    §§push(this.§_-sC§);
                                    if(!_loc6_)
                                    {
                                       §§push(false);
                                       if(!_loc6_)
                                       {
                                          §§pop().setVisibility(§§pop());
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§pop().setVisibility(§§pop());
                                          while(true)
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                this.§_-04p§.setText(_loc3_.toString());
                                                while(true)
                                                {
                                                   if(_loc6_ && _loc2_)
                                                   {
                                                      addr153:
                                                      if(!(_loc7_ || _loc1_))
                                                      {
                                                         break loop11;
                                                      }
                                                      continue loop11;
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!(_loc6_ && this))
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            if(_loc7_)
                                                            {
                                                               if(§§pop() > 0)
                                                               {
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(AngryBirdsFP11.sUserProgress);
                                                                        if(!(_loc6_ && _loc1_))
                                                                        {
                                                                           (§§pop() as §_-09d§).§_-00D§(LevelManager.§_-HM§,_loc3_);
                                                                           addr117:
                                                                           if(_loc6_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(false)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           addr253:
                                                                           §§push(AngryBirdsFP11.sUserProgress);
                                                                        }
                                                                        §§push(§§pop().getEagleScoreForLevel(this.§_-oY§));
                                                                        if(_loc7_ || _loc2_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           break;
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  §§goto(addr117);
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  addr223:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§_-0-g§);
                                                                     addr210:
                                                                     while(true)
                                                                     {
                                                                        §§push(true);
                                                                        addr211:
                                                                        while(true)
                                                                        {
                                                                           §§pop().setVisibility(§§pop());
                                                                           break loop13;
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                  }
                                                               }
                                                               addr222:
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      continue loop1;
                                                   }
                                                   §§goto(addr223);
                                                }
                                                var _loc5_:* = §§pop();
                                                if(_loc7_ || _loc3_)
                                                {
                                                   addr484:
                                                   §§push(this.§_-90§);
                                                   §§push(_loc3_);
                                                   if(!(_loc6_ && _loc1_))
                                                   {
                                                      §§push(3);
                                                      if(_loc7_)
                                                      {
                                                         §§push(§§pop() <= §§pop());
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc7_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc7_ || _loc2_)
                                                                  {
                                                                     §§pop();
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc7_ || _loc1_)
                                                                           {
                                                                              addr533:
                                                                              §§push(§§pop() > §§pop());
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr537:
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    addr549:
                                                                                    if(!(_loc6_ && _loc1_))
                                                                                    {
                                                                                       addr545:
                                                                                       §§pop();
                                                                                       addr547:
                                                                                       §§push(_loc5_);
                                                                                       §§push(0);
                                                                                    }
                                                                                    §§pop().setVisibility(§§pop());
                                                                                    addr471:
                                                                                    addr550:
                                                                                    §§push(_loc3_ > 0);
                                                                                    if(_loc3_ > 0)
                                                                                    {
                                                                                       addr473:
                                                                                       §§pop();
                                                                                       addr474:
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          addr451:
                                                                                          §§push(_loc3_);
                                                                                          if(!(_loc6_ && _loc1_))
                                                                                          {
                                                                                             addr459:
                                                                                             §§push(3);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr463:
                                                                                                §§push(§§pop() <= §§pop());
                                                                                                if(§§pop() <= §§pop())
                                                                                                {
                                                                                                   addr465:
                                                                                                   §§pop();
                                                                                                   addr466:
                                                                                                   §§push(_loc4_);
                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                   {
                                                                                                      addr422:
                                                                                                      §§push(0);
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         addr430:
                                                                                                         §§push(§§pop() > §§pop());
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        addr440:
                                                                                                                        if(_loc7_ || _loc1_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr448:
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(_loc7_ || this)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              if(!(_loc6_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                 if(!(_loc6_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc6_ && this))
                                                                                                                                       {
                                                                                                                                          addr399:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             addr403:
                                                                                                                                             this.§_-90§.§_-0Du§(["Gold","Silver","Bronze"][_loc3_ - 1]);
                                                                                                                                             addr331:
                                                                                                                                             this.§_-75§.setVisibility(true);
                                                                                                                                             this.§_-OC§ = true;
                                                                                                                                             addr401:
                                                                                                                                             addr411:
                                                                                                                                             if(_loc7_ || _loc1_)
                                                                                                                                             {
                                                                                                                                                if(_loc7_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc7_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc7_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr474);
                                                                                                                                                            }
                                                                                                                                                            return;
                                                                                                                                                            addr330:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr466);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr448);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr401);
                                                                                                                                                }
                                                                                                                                                addr362:
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr331);
                                                                                                                                                }
                                                                                                                                                §§goto(addr411);
                                                                                                                                             }
                                                                                                                                             addr336:
                                                                                                                                             §§goto(addr336);
                                                                                                                                          }
                                                                                                                                          §§push(this.§_-90§);
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(1);
                                                                                                                                                   if(_loc7_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§pop().§_-Y5§(§§pop());
                                                                                                                                                      §§goto(addr362);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr547);
                                                                                                                                                }
                                                                                                                                                §§goto(addr484);
                                                                                                                                             }
                                                                                                                                             §§goto(addr547);
                                                                                                                                          }
                                                                                                                                          §§goto(addr403);
                                                                                                                                       }
                                                                                                                                       §§goto(addr463);
                                                                                                                                    }
                                                                                                                                    §§goto(addr430);
                                                                                                                                 }
                                                                                                                                 §§goto(addr440);
                                                                                                                              }
                                                                                                                              §§goto(addr422);
                                                                                                                           }
                                                                                                                           §§goto(addr466);
                                                                                                                        }
                                                                                                                        §§goto(addr471);
                                                                                                                     }
                                                                                                                     §§goto(addr399);
                                                                                                                  }
                                                                                                                  §§goto(addr471);
                                                                                                               }
                                                                                                               §§goto(addr463);
                                                                                                            }
                                                                                                            §§goto(addr473);
                                                                                                         }
                                                                                                         §§goto(addr465);
                                                                                                      }
                                                                                                      §§goto(addr459);
                                                                                                   }
                                                                                                   §§goto(addr451);
                                                                                                }
                                                                                                §§goto(addr399);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr471);
                                                                                       }
                                                                                       §§goto(addr550);
                                                                                    }
                                                                                    §§goto(addr463);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr549);
                                                                           §§push(§§pop() > §§pop());
                                                                        }
                                                                     }
                                                                     §§goto(addr547);
                                                                  }
                                                               }
                                                               §§goto(addr549);
                                                            }
                                                            §§goto(addr537);
                                                         }
                                                         §§goto(addr545);
                                                      }
                                                      §§goto(addr533);
                                                   }
                                                   §§goto(addr545);
                                                }
                                                §§goto(addr330);
                                             }
                                          }
                                       }
                                       addr205:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr205);
                                       §§goto(addr194);
                                    }
                                    addr194:
                                 }
                                 while(true)
                                 {
                                    §§goto(addr204);
                                 }
                              }
                              §§goto(addr211);
                           }
                           §§goto(addr210);
                        }
                     }
                  }
               }
            }
            while(true)
            {
               this.§_-aE§(this.§_-ji§);
               §§goto(addr246);
            }
         }
         §§goto(addr58);
      }
      
      public function run(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(Boolean(this.§_-KW§.§_-Er§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§ in§.§_-Dc§.objects.mSardineCanAdded);
                           if(_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                              loop4:
                              while(_loc2_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc2_)
                                    {
                                       if(!§§pop())
                                       {
                                          addr147:
                                          while(true)
                                          {
                                             §§pop();
                                             addr148:
                                             while(true)
                                             {
                                                §§push(this.§_-01Y§);
                                                if(!_loc3_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                do
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                while(!_loc2_);
                                                
                                                return §§pop();
                                             }
                                          }
                                          addr147:
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   this.§_-75§.setVisibility(false);
                                                   addr92:
                                                   §§push(true);
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr147);
                                                   addr126:
                                                }
                                                §§goto(addr148);
                                             }
                                          }
                                          else
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                §§push(this.§_-OC§);
                                                loop9:
                                                while(!_loc3_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      while(!(_loc3_ && _loc2_))
                                                      {
                                                         if(!(_loc2_ || this))
                                                         {
                                                            continue loop3;
                                                         }
                                                         this.initialize();
                                                         while(true)
                                                         {
                                                         }
                                                         if(!(_loc2_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         addr49:
                                                         if(_loc3_ && _loc2_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         §§push(this.§_-0AJ§ == null);
                                                         if(!_loc2_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         §§goto(addr31);
                                                      }
                                                      §§goto(addr126);
                                                   }
                                                   while(true)
                                                   {
                                                      this.updateAnimations(param1);
                                                      if(!_loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr42);
                                                   }
                                                   §§goto(addr49);
                                                }
                                                §§goto(addr92);
                                             }
                                          }
                                          §§goto(addr92);
                                       }
                                       return §§pop();
                                    }
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           §§goto(addr147);
                        }
                     }
                  }
                  §§goto(addr142);
               }
            }
         }
         §§goto(addr89);
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = 0;
         if(_loc5_)
         {
            if(this.§_-09N§ != param1)
            {
               while(true)
               {
                  this.§_-09N§ = param1;
                  while(!(_loc6_ && param3))
                  {
                     this.§_-hY§.setText(this.§_-2e§(this.§_-09N§));
                     loop2:
                     while(true)
                     {
                        if(!this.§_-ji§)
                        {
                           if(_loc5_ || this)
                           {
                              break;
                           }
                           while(true)
                           {
                           }
                           addr333:
                        }
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(this.§_-KW§.§_-Er§));
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              loop6:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop2;
                                    }
                                    addr300:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       addr278:
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             continue loop5;
                                          }
                                          loop12:
                                          while(§§pop())
                                          {
                                             if(_loc5_ || param1)
                                             {
                                                if(!(_loc6_ && param3))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr253);
                                                   }
                                                   else
                                                   {
                                                      addr359:
                                                   }
                                                   return;
                                                }
                                                continue loop2;
                                             }
                                             addr254:
                                             if(!(_loc6_ && param2))
                                             {
                                                break;
                                             }
                                             addr290:
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§push(this.§_-01Y§);
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop12;
                                                }
                                                continue loop4;
                                                §§goto(addr254);
                                             }
                                             continue loop9;
                                          }
                                          addr173:
                                          §§push(Boolean(this.§_-ji§));
                                          if(Boolean(this.§_-ji§))
                                          {
                                             addr179:
                                             §§pop();
                                             addr180:
                                             §§push(this.§_-09N§);
                                             if(_loc5_)
                                             {
                                                §§push(this.§_-ji§.§_-04F§);
                                                if(!(_loc6_ && param3))
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr149:
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         if(!(_loc6_ && param3))
                                                         {
                                                            addr63:
                                                            §§push(this.§_-eY§);
                                                            if(_loc5_)
                                                            {
                                                               addr221:
                                                               if(_loc5_)
                                                               {
                                                                  if(§§pop().length <= 5)
                                                                  {
                                                                     addr73:
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           addr84:
                                                                           §§push(this.§_-eY§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop().length > 0);
                                                                              if(_loc5_ || param3)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc6_ && param3))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr109:
                                                                                             if(!(_loc6_ && param3))
                                                                                             {
                                                                                                §§pop();
                                                                                                addr117:
                                                                                                if(!(_loc6_ && param2))
                                                                                                {
                                                                                                   §§push(!this.§_-0AJ§);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§goto(addr31);
                                                                                                   }
                                                                                                   §§goto(addr109);
                                                                                                }
                                                                                                §§push(int(this.§_-KW§.data.indexOf(this.§_-ji§) - 1));
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   addr206:
                                                                                                   addr205:
                                                                                                   addr207:
                                                                                                   if((_loc4_ = §§pop()) >= 0)
                                                                                                   {
                                                                                                      addr208:
                                                                                                      this.§_-ji§ = this.§_-KW§.data[_loc4_];
                                                                                                      §§goto(addr215);
                                                                                                   }
                                                                                                   this.§_-ji§ = null;
                                                                                                   §§goto(addr187);
                                                                                                }
                                                                                                §§goto(addr206);
                                                                                                addr224:
                                                                                             }
                                                                                             §§goto(addr179);
                                                                                          }
                                                                                          addr31:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(!(_loc6_ && param1))
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            this.§_-xO§();
                                                                                                            §§goto(addr55);
                                                                                                         }
                                                                                                         addr187:
                                                                                                         §§goto(addr173);
                                                                                                      }
                                                                                                      §§goto(addr180);
                                                                                                   }
                                                                                                   §§goto(addr73);
                                                                                                }
                                                                                                §§goto(addr117);
                                                                                             }
                                                                                             §§goto(addr55);
                                                                                          }
                                                                                          addr55:
                                                                                          if(_loc6_ && param2)
                                                                                          {
                                                                                             §§goto(addr173);
                                                                                             addr215:
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr173);
                                                                                 }
                                                                                 §§goto(addr149);
                                                                              }
                                                                              §§goto(addr109);
                                                                           }
                                                                           addr161:
                                                                           §§pop().pop();
                                                                           addr172:
                                                                           §§goto(addr63);
                                                                        }
                                                                        §§goto(addr208);
                                                                     }
                                                                     §§goto(addr172);
                                                                  }
                                                                  §§goto(addr161);
                                                                  §§push(this.§_-eY§);
                                                               }
                                                               §§pop().unshift(this.§_-ji§);
                                                               §§goto(addr224);
                                                            }
                                                         }
                                                         §§goto(addr84);
                                                      }
                                                      §§goto(addr221);
                                                      §§push(this.§_-eY§);
                                                   }
                                                   §§goto(addr205);
                                                }
                                                §§goto(addr207);
                                             }
                                             §§goto(addr206);
                                          }
                                          §§goto(addr149);
                                       }
                                       continue loop6;
                                    }
                                    addr277:
                                 }
                              }
                           }
                        }
                     }
                     if(!_loc6_)
                     {
                        return;
                     }
                  }
               }
            }
            §§goto(addr359);
         }
         addr253:
      }
      
      private function §_-aE§(param1:§_-5b§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§_-ME§);
            loop0:
            while(true)
            {
               §§pop().setVisibility(param1.§_-0Ef§ <= 3);
               loop1:
               while(true)
               {
                  §§push(param1.§_-0Ef§ > 0);
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§pop();
                           addr126:
                           while(true)
                           {
                              §§push(param1.§_-0Ef§ <= 3);
                              if(_loc3_)
                              {
                                 break;
                              }
                              continue loop7;
                           }
                        }
                        addr125:
                     }
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr85:
                           while(true)
                           {
                              §§push(this.§_-ME§);
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              §§pop().§_-0Du§(["Gold","Silver","Bronze"][param1.§_-0Ef§ - 1]);
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                           addr85:
                        }
                        while(true)
                        {
                           this.§_-wo§.setText(param1.§_-0Ef§.toString());
                           while(!_loc2_)
                           {
                              if(!(_loc2_ && param1))
                              {
                                 this.§_-eT§.setText(this.§_-2e§(param1.§_-04F§));
                                 while(!_loc2_)
                                 {
                                    this.§_-WV§(param1);
                                    if(_loc2_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    if(!_loc2_)
                                    {
                                       return;
                                    }
                                    §§goto(addr85);
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                           §§goto(addr108);
                        }
                     }
                  }
                  §§goto(addr125);
               }
            }
         }
         §§goto(addr85);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§_-k6§ = null;
         for each(_loc2_ in [this.§_-sC§,this.§_-NE§,this.§_-sC§])
         {
            if(_loc6_ || this)
            {
               this.§_-ee§(_loc2_,param1,true);
            }
         }
      }
      
      private function §_-WV§(param1:§_-5b§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§_-Dk§.§_-03B§(param1.userId));
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:String = param1.userId;
         if(_loc5_)
         {
            this.§_-EO§ = param1;
            while(true)
            {
               this.§_-hs§();
            }
            addr108:
         }
         loop1:
         while(true)
         {
            this.§_-t-§ = new §_-yo§(_loc3_,"",false,§_-bT§.NORMAL);
            while(_loc5_ || _loc2_)
            {
               this.§_-gJ§(this.§_-6g§,this.§_-t-§);
               while(!_loc4_)
               {
                  this.§_-07m§(param1.userName,this.§_-0Aq§,this.§_-s0§.getItemByName("EnemyNameMask").mClip);
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     break loop1;
                  }
                  §§goto(addr108);
               }
            }
         }
      }
      
      private function §_-07m§(param1:String, param2:§_-0Eo§, param3:MovieClip) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop().length > 6)
               {
                  if(!(_loc5_ && param1))
                  {
                     param2.mClip.mask = param3;
                     addr112:
                     loop5:
                     while(true)
                     {
                        param3.visible = true;
                        loop4:
                        while(true)
                        {
                           addr36:
                           addr64:
                           while(!(_loc5_ && param1))
                           {
                              if(_loc4_)
                              {
                                 §§goto(addr36);
                                 continue;
                              }
                              continue loop5;
                           }
                           while(true)
                           {
                              param2.setText(param1);
                              if(_loc5_ && this)
                              {
                                 break;
                              }
                              if(_loc4_)
                              {
                                 continue loop0;
                              }
                              continue loop4;
                           }
                        }
                     }
                     addr112:
                  }
                  §§goto(addr112);
               }
               else
               {
                  param2.mClip.mask = null;
               }
               while(true)
               {
                  param3.visible = false;
                  §§goto(addr64);
               }
            }
         }
         §§goto(addr112);
      }
      
      private function §_-gJ§(param1:§_-k6§, param2:MovieClip) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         while(true)
         {
            if(param1.mClip.numChildren <= 0)
            {
               if(_loc4_ && param2)
               {
                  break;
               }
               if(!(_loc4_ && this))
               {
                  param1.mClip.addChild(param2);
                  break;
               }
            }
            else
            {
               param1.mClip.removeChildAt(0);
            }
         }
      }
      
      private function §_-02P§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push((AngryBirdsFP11.sUserProgress as §_-09d§).avatarString);
         if(_loc3_ || _loc1_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push((AngryBirdsFP11.sUserProgress as §_-09d§).§_-0x§);
         if(!(_loc4_ && this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            this.§_-TS§();
            while(true)
            {
               this.§_-HQ§ = new §_-yo§(_loc2_,"",false,§_-bT§.NORMAL);
               while(_loc3_)
               {
                  this.§_-gJ§(this.§_-00o§,this.§_-HQ§);
                  if(!(_loc4_ && _loc1_))
                  {
                     return;
                     addr90:
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      private function §_-J9§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-02P§();
         }
      }
      
      private function §_-hs§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§_-t-§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§_-t-§);
                     addr70:
                     while(true)
                     {
                        §§pop().dispose();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr71);
      }
      
      private function §_-TS§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§_-HQ§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§_-HQ§);
                     addr75:
                     while(true)
                     {
                        §§pop().dispose();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr76);
      }
      
      public function set §_-Id§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§_-01Y§ = param1;
         }
         do
         {
            §§push(this.§_-75§);
            §§push(this.§_-01Y§);
            if(_loc2_ || this)
            {
               §§push(!§§pop());
            }
            §§pop().setVisibility(§§pop());
         }
         while(_loc3_ && param1);
         
      }
      
      private function §_-xO§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-0AJ§ = this.§_-eY§.pop();
         }
         loop0:
         while(true)
         {
            this.§_-01n§ = §_-cx§.§_-3S§.§_-Wf§(this.§_-08W§.mClip,{"x":this.§_-xB§ + 15},{"x":this.§_-xB§},0.5,§_-cx§.§_-Kl§);
            do
            {
               §§push(this.§_-01n§);
               loop2:
               while(true)
               {
                  §§pop().onComplete = this.§_-06§;
                  addr63:
                  while(_loc1_)
                  {
                     continue loop2;
                  }
                  continue loop0;
               }
            }
            while(!(_loc1_ || _loc1_));
            
            return;
         }
      }
      
      private function §_-06§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(_loc3_)
         {
            this.§_-01n§ = null;
            loop0:
            while(true)
            {
               §§push(this.§_-NE§);
               addr54:
               while(true)
               {
                  §§pop().§_-0Du§("Start");
                  continue loop0;
               }
            }
         }
         §§goto(addr39);
      }
      
      private function §false§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-0n§ = null;
         }
         loop0:
         while(true)
         {
            this.§_-0AJ§ = null;
            for(; this.§_-eY§.length > 0; if(_loc1_ || this)
            {
               break;
            })
            {
               if(_loc1_)
               {
                  if(!_loc2_)
                  {
                     this.§_-xO§();
                     continue;
                  }
                  continue loop0;
               }
            }
            return;
         }
      }
      
      private function §_-0Db§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§_-01n§ = null;
         }
         do
         {
            this.§_-0AJ§ = null;
         }
         while(!_loc2_);
         
      }
      
      private function §_-2e§(param1:int) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:* = param1.toString();
         var _loc3_:Array = [];
         if(_loc7_ || _loc3_)
         {
            §§push(_loc2_);
            loop0:
            for(; §§pop().length % 3 > 0; while(true)
            {
               §§push(_loc2_);
               if(!(_loc8_ && _loc3_))
               {
                  §§push(§§pop().slice(_loc2_.length % 3));
               }
               if(!(_loc7_ || _loc2_))
               {
                  break;
               }
               _loc2_ = §§pop();
               if(_loc8_ && param1)
               {
                  continue;
               }
               if(!_loc7_)
               {
                  §§goto(addr131);
               }
            })
            {
               while(true)
               {
                  _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
                  continue loop0;
               }
            }
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc7_)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(_loc7_)
                        {
                           var _loc5_:int = 0;
                           if(!(_loc8_ && param1))
                           {
                              var _loc6_:* = _loc3_;
                              if(_loc8_)
                              {
                              }
                              while(§§hasnext(_loc6_,_loc5_))
                              {
                                 §§push(§§nextvalue(_loc5_,_loc6_));
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc8_)
                                    {
                                       §§push(_loc2_);
                                       if(_loc7_)
                                       {
                                          addr182:
                                          §§push(§§pop() + (_loc4_ + ","));
                                       }
                                       _loc2_ = §§pop();
                                    }
                                    continue;
                                 }
                                 §§goto(addr182);
                              }
                           }
                           if(_loc7_ || _loc2_)
                           {
                           }
                           §§goto(addr222);
                        }
                        addr209:
                        §§push(_loc2_);
                        if(_loc7_)
                        {
                           §§goto(addr212);
                        }
                        break;
                     }
                     _loc3_.push(_loc2_.substr(0,3));
                     if(!_loc8_)
                     {
                        §§push(_loc2_);
                        if(_loc7_ || this)
                        {
                           §§push(3);
                           if(_loc7_ || _loc3_)
                           {
                              §§push(§§pop().substr(§§pop()));
                              if(!(_loc8_ && this))
                              {
                                 _loc2_ = §§pop();
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    if(false)
                                    {
                                       continue loop3;
                                    }
                                    continue;
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr212);
                           }
                           addr212:
                           §§push(§§pop().substr(0,_loc2_.length - 1));
                           if(_loc7_)
                           {
                              break;
                           }
                        }
                     }
                     §§goto(addr222);
                  }
                  break;
               }
               _loc2_ = §§pop();
               addr222:
               return _loc2_;
            }
            addr70:
         }
         §§goto(addr70);
      }
      
      private function §_-ee§(param1:§_-k6§, param2:Number, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(!(_loc6_ && param1))
         {
            §§push(param1.§_-3t§);
            loop0:
            while(§§pop() == true)
            {
               if(!_loc5_)
               {
                  continue;
               }
               §§push(param1.§_-eB§(param2));
               if(_loc5_)
               {
                  §§push(§§pop());
                  if(_loc5_)
                  {
                     §§push(_loc4_ = §§pop());
                  }
               }
               if(§§pop() != "End")
               {
                  break;
               }
               while(true)
               {
                  param1.§_-3t§ = false;
                  continue loop0;
               }
            }
            addr27:
            return;
            addr73:
         }
         while(true)
         {
            §§push(param3);
            if(!_loc6_)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     if(!(_loc5_ || this))
                     {
                        continue;
                     }
                     param1.setVisibility(false);
                  }
                  if(!_loc5_)
                  {
                     §§goto(addr89);
                  }
               }
            }
            else
            {
               §§goto(addr73);
            }
            §§goto(addr27);
         }
      }
      
      private function §_-S3§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§_-M3§ = null;
         var _loc2_:§_-pI§ = null;
         var _loc3_:int = 0;
         for each(_loc1_ in this.§_-KW§.data)
         {
            if(!(_loc5_ && _loc3_))
            {
               if(!(_loc1_ is §_-5b§))
               {
                  continue;
               }
            }
            _loc2_ = new §_-pI§(_loc1_.userId,"",false,§_-bT§.NORMAL);
            if(_loc6_)
            {
               _loc2_.dispose();
            }
         }
      }
   }
}
