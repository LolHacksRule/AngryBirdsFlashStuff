package §_-ad§
{
   import §_-0Dg§.§class§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-gt§;
   import §_-6C§.§_-k6§;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-eS§.§_-6U§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-05N§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "LevelStartState";
      
      private static var §_-02y§:BitmapData = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §_-pk§ = "LevelStartState";
            do
            {
               §_-02y§ = null;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private var §_-RV§:Boolean = false;
      
      private var §_-gD§:Boolean = false;
      
      private var §_-kL§:§class§ = null;
      
      private var §_-Ct§:Boolean = false;
      
      private var §_-Q6§:Boolean = false;
      
      private var §_-m-§:Number = 0;
      
      private var §_-0Di§:Number = 0;
      
      private var §_-Pg§:Number = 0;
      
      private var §_-0Ag§:Number = 0;
      
      private var §_-dF§:Number;
      
      private var §_-a1§:Number;
      
      private var §_-xo§:Number;
      
      private var §_-b6§:Number;
      
      private var §_-0Dx§:§_-6U§;
      
      public function §_-05N§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function get §_-Xp§() : BitmapData
      {
         return §_-02y§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.init();
            while(true)
            {
               §_-s0§ = new §_-5q§(this);
               loop1:
               while(true)
               {
                  §_-s0§.init(§_-vB§.§_-ky§.Views.View_LevelStart[0]);
                  loop2:
                  while(true)
                  {
                     this.§_-kL§ = new §class§(§ in§.§_-Dc§);
                     while(true)
                     {
                        this.§_-dF§ = (§_-s0§.getItemByName("Container_MenuLeftButtons") as §_-gt§).height;
                        loop6:
                        while(_loc2_ || this)
                        {
                           if(_loc2_)
                           {
                              this.§_-b6§ = §_-s0§.getItemByName("Button_RightMenuOpen").y - 50;
                              if(_loc1_ && this)
                              {
                                 continue;
                              }
                              addr45:
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       this.§_-a1§ = (§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).height;
                                    }
                                    return;
                                 }
                                 addr122:
                                 addr73:
                                 continue loop2;
                              }
                              while(true)
                              {
                                 this.§_-xo§ = §_-s0§.getItemByName("Button_LeftMenuOpen").y - 50;
                                 continue loop6;
                                 §§goto(addr45);
                              }
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.activate();
            loop0:
            while(true)
            {
               § in§.§_-Dc§.§_-Vf§(true);
               while(true)
               {
                  § in§.setController(this.§_-kL§);
                  while(_loc2_ || _loc2_)
                  {
                     this.§_-kL§.init();
                     loop3:
                     while(!(_loc1_ && _loc2_))
                     {
                        while(true)
                        {
                           AngryBirdsFP11.playThemeMusic();
                           while(!(_loc1_ && this))
                           {
                              §_-s0§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§_-Lz§());
                              do
                              {
                                 §_-s0§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§ in§.§_-0-I§());
                                 do
                                 {
                                    §_-s0§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§_-nn§ ? false : true);
                                 }
                                 while(_loc1_ && _loc1_);
                                 
                              }
                              while(_loc1_);
                              
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr115);
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
         if(!(_loc3_ && this))
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() != §_-nG§.STATE_STATUS_RUNNING)
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr144);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr145:
                  }
               }
               loop1:
               while(true)
               {
                  this.§_-xo§ = §_-s0§.getItemByName("Button_LeftMenuOpen").y - 50;
                  addr129:
                  loop2:
                  while(true)
                  {
                     this.§_-b6§ = §_-s0§.getItemByName("Button_RightMenuOpen").y - 50;
                     loop3:
                     while(true)
                     {
                        this.§_-1x§(param1);
                        while(true)
                        {
                           if(this.§_-gD§)
                           {
                              loop7:
                              for(; mNextState.length > 0; while(true)
                              {
                                 continue loop7;
                              })
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc4_)
                                    {
                                       return §_-nG§.STATE_STATUS_COMPLETED;
                                    }
                                    continue loop1;
                                 }
                              }
                              addr32:
                              return §_-nG§.STATE_STATUS_RUNNING;
                           }
                           while(_loc4_)
                           {
                              continue loop2;
                              §§goto(addr47);
                           }
                        }
                     }
                  }
               }
            }
            addr144:
            return _loc2_;
         }
         §§goto(addr129);
      }
      
      private function §_-1x§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            (§_-s0§.getItemByName("Container_MenuLeftButtons") as §_-gt§).mClip.scrollRect = new Rectangle(0,0,(§_-s0§.getItemByName("Container_MenuLeftButtons") as §_-gt§).width,this.§_-dF§ + 20 - (this.§_-dF§ - this.§_-Pg§));
            loop0:
            while(true)
            {
               (§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).mClip.scrollRect = new Rectangle(0,0,(§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).width,this.§_-a1§ + 20 - (this.§_-a1§ - this.§_-0Ag§));
               loop1:
               while(true)
               {
                  §§push(this.§_-Ct§);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(this.§_-m-§);
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§_-m-§);
                                    if(_loc2_ || param1)
                                    {
                                       §§push(0.3);
                                       if(_loc2_ || this)
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§pop().§_-m-§ = §§pop();
                                    addr716:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr694:
                              }
                              while(true)
                              {
                                 §§push(this.§_-m-§);
                                 loop8:
                                 while(true)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(0);
                                       loop9:
                                       while(true)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             while(_loc2_)
                                             {
                                                this.§_-m-§ = 0;
                                                while(true)
                                                {
                                                }
                                             }
                                             continue loop1;
                                             addr681:
                                          }
                                          while(true)
                                          {
                                             §§push(this.§_-Pg§);
                                             loop13:
                                             while(true)
                                             {
                                                §§push(0);
                                                loop14:
                                                while(true)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§push(this);
                                                            §§push(this.§_-Pg§);
                                                            if(_loc2_ || param1)
                                                            {
                                                               §§push(0.5);
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() * param1);
                                                               }
                                                               §§push(§§pop() - §§pop());
                                                            }
                                                            §§pop().§_-Pg§ = §§pop();
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§_-Pg§);
                                                                     loop82:
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(0);
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    (§_-s0§.getItemByName("Container_MenuLeftButtons") as §_-gt§).setVisibility(false);
                                                                                    addr631:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§_-Pg§ = 0;
                                                                                       addr616:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr624:
                                                                              }
                                                                              loop35:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§_-Q6§);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§push(this.§_-0Di§);
                                                                                    loop36:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(0);
                                                                                          while(_loc2_ || param1)
                                                                                          {
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                loop38:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push(this.§_-0Di§);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§push(0.5);
                                                                                                      if(!(_loc3_ && this))
                                                                                                      {
                                                                                                         §§push(§§pop() * param1);
                                                                                                      }
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                   }
                                                                                                   §§pop().§_-0Di§ = §§pop();
                                                                                                   loop39:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            (§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).y = (§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).y + 0.5 * param1;
                                                                                                            continue loop39;
                                                                                                         }
                                                                                                         addr437:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop40:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this);
                                                                                                            §§push(this.§_-0Ag§);
                                                                                                            if(_loc2_ || this)
                                                                                                            {
                                                                                                               §§push(0.5);
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * param1);
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            §§pop().§_-0Ag§ = §§pop();
                                                                                                            loop41:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop42:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§_-0Ag§);
                                                                                                                  while(!(_loc3_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(_loc2_ || param1)
                                                                                                                     {
                                                                                                                        §§push(this.§_-a1§);
                                                                                                                        if(!(_loc3_ && this))
                                                                                                                        {
                                                                                                                           if(§§pop() > §§pop())
                                                                                                                           {
                                                                                                                              loop44:
                                                                                                                              while(_loc2_ || _loc3_)
                                                                                                                              {
                                                                                                                                 this.§_-0Ag§ = this.§_-a1§;
                                                                                                                                 loop45:
                                                                                                                                 for(; _loc2_ || this; if(_loc3_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 },if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop44;
                                                                                                                                 },if(!(_loc3_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr308);
                                                                                                                                    }
                                                                                                                                    addr305:
                                                                                                                                 },§§goto(addr529))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr164:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          (§_-s0§.getItemByName("Button_LeftMenuOpen") as §_-Mu§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                                                                          loop48:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_ || param1)
                                                                                                                                                         {
                                                                                                                                                            (§_-s0§.getItemByName("Button_RightMenuOpen") as §_-Mu§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                                                                                            loop49:
                                                                                                                                                            while(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        (§_-s0§.getItemByName("Button_LeftMenuOpen") as §_-Mu§).mClip.MovieClip_LeftMenuImage.rotation = this.§_-m-§;
                                                                                                                                                                        loop50:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop49;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc2_ || _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop48;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              (§_-s0§.getItemByName("Button_RightMenuOpen") as §_-Mu§).mClip.MovieClip_RightMenuImage.rotation = this.§_-0Di§;
                                                                                                                                                                              while(!(_loc3_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§_-s0§.getItemByName("Container_MenuLeftButtons") as §_-gt§);
                                                                                                                                                                                 §§push(this.§_-xo§);
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - this.§_-Pg§);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                 continue loop50;
                                                                                                                                                                              }
                                                                                                                                                                              loop89:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§_-Pg§ = this.§_-dF§;
                                                                                                                                                                                 addr729:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr687:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop35;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop89;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr107:
                                                                                                                                                                              addr725:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    (§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).y = (§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).y - 0.5 * param1;
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr517:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§_-0Di§);
                                                                                                                                                                                          addr520:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(180);
                                                                                                                                                                                             addr521:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr523:
                                                                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break loop48;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§_-0Ag§);
                                                                                                                                                                                                      continue loop3;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr484:
                                                                                                                                                                                                }
                                                                                                                                                                                                addr762:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§_-m-§ = 90;
                                                                                                                                                                                                         addr766:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr763:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§_-Pg§);
                                                                                                                                                                                                      break loop36;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr554:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr624);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr588:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(!(_loc3_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           this.§_-0Di§ = 0;
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr264);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this);
                                                                                                                                                                           §§push(this.§_-m-§);
                                                                                                                                                                           if(_loc2_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0.3);
                                                                                                                                                                              if(!(_loc3_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * param1);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().§_-m-§ = §§pop();
                                                                                                                                                                           addr794:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr758:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§_-m-§);
                                                                                                                                                                                 addr761:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr762);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr772:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr716);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc3_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           (§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).setVisibility(true);
                                                                                                                                                                           §§goto(addr611);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr597:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr766);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr343);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this);
                                                                                                                                                                  §§push(this.§_-0Ag§);
                                                                                                                                                                  if(!(_loc3_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0.5);
                                                                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * param1);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().§_-0Ag§ = §§pop();
                                                                                                                                                                  §§goto(addr302);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr799);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr794);
                                                                                                                                                      }
                                                                                                                                                      loop18:
                                                                                                                                                      while(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         loop19:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§_-Pg§);
                                                                                                                                                            addr720:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§_-dF§);
                                                                                                                                                               addr722:
                                                                                                                                                               addr735:
                                                                                                                                                               addr736:
                                                                                                                                                               while(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr725);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr687);
                                                                                                                                                               }
                                                                                                                                                               while(§§pop() >= §§pop())
                                                                                                                                                               {
                                                                                                                                                                  continue loop19;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this);
                                                                                                                                                                     §§push(this.§_-Pg§);
                                                                                                                                                                     if(_loc2_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * param1);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().§_-Pg§ = §§pop();
                                                                                                                                                                     continue loop18;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr806);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop0;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr554);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue loop41;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                this.§_-0Di§ = 180;
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr484);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr694);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr529:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr763);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop45;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr616);
                                                                                                                              }
                                                                                                                              continue loop15;
                                                                                                                           }
                                                                                                                           §§goto(addr385);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(!_loc3_)
                                                                                                                           {
                                                                                                                              if(§§pop() < §§pop())
                                                                                                                              {
                                                                                                                                 continue loop40;
                                                                                                                              }
                                                                                                                              continue loop42;
                                                                                                                           }
                                                                                                                           addr496:
                                                                                                                        }
                                                                                                                        §§goto(addr722);
                                                                                                                     }
                                                                                                                     §§goto(addr770);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop9;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr771:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop() < §§pop())
                                                                                                                  {
                                                                                                                     §§goto(addr772);
                                                                                                                  }
                                                                                                                  §§goto(addr758);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc2_ || _loc3_))
                                                                                                      {
                                                                                                         continue loop38;
                                                                                                      }
                                                                                                      §§goto(addr263);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr305);
                                                                                          }
                                                                                          continue loop14;
                                                                                       }
                                                                                       continue loop3;
                                                                                       if(_loc3_ && _loc2_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                             continue loop13;
                                                                                          }
                                                                                          continue loop82;
                                                                                       }
                                                                                       §§goto(addr520);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr735);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr597);
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                        }
                                                                        §§goto(addr761);
                                                                     }
                                                                  }
                                                                  addr617:
                                                               }
                                                               §§goto(addr736);
                                                            }
                                                         }
                                                         §§goto(addr729);
                                                      }
                                                   }
                                                   §§goto(addr617);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr720);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr799);
                  }
               }
            }
         }
         §§goto(addr437);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            (§_-s0§.getItemByName("Button_Play") as §_-Mu§).setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
            while(true)
            {
               this.§_-RV§ = false;
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     super.deActivate();
                     if(_loc2_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr71);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(!(_loc8_ && param3))
         {
            §§push("OPEN_LEFT_MENU");
            if(!_loc8_)
            {
               §§push(_loc6_);
               if(!(_loc8_ && param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc7_)
                     {
                        addr412:
                        §§push(0);
                        if(_loc8_ && param3)
                        {
                           addr581:
                        }
                     }
                     else
                     {
                        addr601:
                        §§push(8);
                        if(!_loc7_)
                        {
                           addr683:
                        }
                     }
                  }
                  else
                  {
                     §§push("OPEN_RIGHT_MENU");
                     if(_loc7_)
                     {
                        §§push(_loc6_);
                        if(_loc7_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc8_ && this))
                              {
                                 §§push(1);
                                 if(_loc8_ && param1)
                                 {
                                 }
                              }
                              else
                              {
                                 addr522:
                                 §§push(5);
                                 if(_loc8_ && param3)
                                 {
                                    addr548:
                                 }
                              }
                              §§goto(addr700);
                           }
                           else
                           {
                              §§push("PLAY_LEVEL");
                              if(_loc7_)
                              {
                                 §§push(_loc6_);
                                 if(!(_loc8_ && this))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          §§push(2);
                                          if(!_loc7_)
                                          {
                                             addr502:
                                          }
                                          §§goto(addr700);
                                       }
                                       else
                                       {
                                          addr573:
                                          §§push(7);
                                          if(!(_loc8_ && param3))
                                          {
                                             §§goto(addr581);
                                          }
                                          else
                                          {
                                             addr627:
                                             §§goto(addr700);
                                          }
                                       }
                                       §§goto(addr700);
                                    }
                                    else
                                    {
                                       §§push("OPEN_MENU");
                                       if(!(_loc8_ && param2))
                                       {
                                          addr470:
                                          §§push(_loc6_);
                                          if(_loc7_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc7_ || param2)
                                                {
                                                   §§push(3);
                                                   if(!_loc8_)
                                                   {
                                                      §§goto(addr700);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr502);
                                                   }
                                                }
                                                §§goto(addr700);
                                             }
                                             else
                                             {
                                                §§push("OPEN_AVATAR_CREATOR");
                                                if(!_loc8_)
                                                {
                                                   addr488:
                                                   §§push(_loc6_);
                                                   if(!_loc8_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc8_ && param2))
                                                         {
                                                            §§push(4);
                                                            if(_loc7_)
                                                            {
                                                               §§goto(addr502);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr627);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr675:
                                                            §§push(11);
                                                            if(!(_loc8_ && this))
                                                            {
                                                               §§goto(addr683);
                                                            }
                                                            else
                                                            {
                                                               addr695:
                                                               §§goto(addr700);
                                                            }
                                                         }
                                                         §§goto(addr700);
                                                      }
                                                      else
                                                      {
                                                         §§push("TOGGLE_SOUNDS");
                                                         if(!(_loc8_ && this))
                                                         {
                                                            addr511:
                                                            §§push(_loc6_);
                                                            if(!(_loc8_ && param3))
                                                            {
                                                               addr519:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§goto(addr522);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr675);
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
                                                                        addr537:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(6);
                                                                              if(!(_loc8_ && param2))
                                                                              {
                                                                                 §§goto(addr548);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr683);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr619:
                                                                              §§push(9);
                                                                              if(!(_loc8_ && this))
                                                                              {
                                                                                 §§goto(addr627);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr650:
                                                                                 §§goto(addr700);
                                                                              }
                                                                           }
                                                                           §§goto(addr700);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("FULLSCREEN_BUTTON");
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(!(_loc8_ && param2))
                                                                              {
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc8_ && param3))
                                                                                    {
                                                                                       §§goto(addr573);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr601);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push("OPEN_CREDITS");
                                                                                    if(_loc7_ || param2)
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          addr593:
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(!(_loc8_ && param2))
                                                                                             {
                                                                                                §§goto(addr601);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr619);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push("CREDITS_BUTTON");
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                if(_loc7_ || param1)
                                                                                                {
                                                                                                   addr616:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         §§goto(addr619);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr675);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push("SOUNDS_BUTTON");
                                                                                                      if(!(_loc8_ && this))
                                                                                                      {
                                                                                                         addr636:
                                                                                                         §§push(_loc6_);
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                         }
                                                                                                         addr686:
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            addr687:
                                                                                                            §§push(12);
                                                                                                            if(_loc7_ || param1)
                                                                                                            {
                                                                                                               §§goto(addr695);
                                                                                                            }
                                                                                                            §§goto(addr700);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr700:
                                                                                                            loop9:
                                                                                                            switch(§§pop())
                                                                                                            {
                                                                                                               case 0:
                                                                                                                  addr381:
                                                                                                                  if(this.§_-Ct§)
                                                                                                                  {
                                                                                                                     addr382:
                                                                                                                     this.§_-Ct§ = false;
                                                                                                                     addr385:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     this.§_-Ct§ = true;
                                                                                                                     addr376:
                                                                                                                  }
                                                                                                                  break;
                                                                                                               case 1:
                                                                                                                  addr363:
                                                                                                                  if(this.§_-Q6§)
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        this.§_-Q6§ = false;
                                                                                                                        addr369:
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  this.§_-Q6§ = true;
                                                                                                                  addr357:
                                                                                                                  break;
                                                                                                               case 2:
                                                                                                                  §_-pX§.playSound("Menu_Confirm");
                                                                                                                  mNextState = §_-Rp§.§_-pk§;
                                                                                                                  break;
                                                                                                                  addr333:
                                                                                                                  addr340:
                                                                                                               case 3:
                                                                                                                  §_-s0§.setItemVisibility("Container_MenuButtons",!§_-s0§.getItemByName("Container_MenuButtons").visible);
                                                                                                                  addr320:
                                                                                                                  if(_loc7_ || this)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr333);
                                                                                                                  break;
                                                                                                               case 4:
                                                                                                                  break;
                                                                                                               case 5:
                                                                                                                  break;
                                                                                                               case 6:
                                                                                                                  addr307:
                                                                                                                  _loc4_ = !§ in§.§_-0-I§();
                                                                                                                  § in§.§_-bN§(_loc4_);
                                                                                                                  §_-s0§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                                                                                                                  addr308:
                                                                                                                  if(!(_loc8_ && param3))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr382);
                                                                                                                  break;
                                                                                                                  addr308:
                                                                                                                  addr306:
                                                                                                                  addr296:
                                                                                                               case 7:
                                                                                                                  §_-pX§.playSound("Menu_Confirm");
                                                                                                                  addr274:
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     AngryBirdsFP11.§_-07§.§_-0De§();
                                                                                                                     addr260:
                                                                                                                     if(!(_loc8_ && param2))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr308);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr369);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               case 8:
                                                                                                                  §_-pX§.playSound("Menu_Confirm");
                                                                                                                  break;
                                                                                                                  addr255:
                                                                                                               case 9:
                                                                                                                  §_-pX§.playSound("Menu_Confirm");
                                                                                                                  mNextState = §_-7A§.§_-pk§;
                                                                                                                  this.§_-Ct§ = false;
                                                                                                                  addr228:
                                                                                                                  if(_loc7_ || param3)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr274);
                                                                                                                  break;
                                                                                                                  addr248:
                                                                                                                  addr241:
                                                                                                               case 10:
                                                                                                                  §_-pX§.playSound("Menu_Confirm");
                                                                                                                  loop0:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(AngryBirdsFP11.§_-Lz§());
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           §§push(!§§pop());
                                                                                                                           loop1:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc7_ || param3)
                                                                                                                              {
                                                                                                                                 if(_loc7_ || param2)
                                                                                                                                 {
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       _loc5_ = §§pop();
                                                                                                                                       while(_loc7_ || this)
                                                                                                                                       {
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             AngryBirdsFP11.§_-mv§(_loc5_);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc7_ || param1))
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   continue loop1;
                                                                                                                                                }
                                                                                                                                                §§goto(addr376);
                                                                                                                                             }
                                                                                                                                             §§goto(addr385);
                                                                                                                                             addr172:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr248);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr241);
                                                                                                                                       addr207:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr363);
                                                                                                                                    }
                                                                                                                                    §§goto(addr369);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr306);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr307);
                                                                                                                           }
                                                                                                                           §§goto(addr363);
                                                                                                                           addr190:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr381);
                                                                                                                        }
                                                                                                                        §§goto(addr382);
                                                                                                                     }
                                                                                                                     §§goto(addr190);
                                                                                                                     addr124:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc8_ && param1))
                                                                                                                        {
                                                                                                                           break loop9;
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr320);
                                                                                                               case 11:
                                                                                                                  break;
                                                                                                               case 12:
                                                                                                                  if(this.§_-0Dx§ == null)
                                                                                                                  {
                                                                                                                     loop2:
                                                                                                                     for(; !(_loc8_ && param2); if(!(_loc7_ || this))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     },if(!(_loc8_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc7_ || param3)
                                                                                                                        {
                                                                                                                           (§_-s0§.getItemByName("MovieClip_YouTubeArea") as §_-k6§).setVisibility(true);
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    if(_loc7_ || param2)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          §§goto(addr44);
                                                                                                                                       }
                                                                                                                                       addr386:
                                                                                                                                       break loop9;
                                                                                                                                    }
                                                                                                                                    §§goto(addr357);
                                                                                                                                 }
                                                                                                                                 §§goto(addr260);
                                                                                                                              }
                                                                                                                              §§goto(addr124);
                                                                                                                           }
                                                                                                                           break loop9;
                                                                                                                        }
                                                                                                                        §§goto(addr255);
                                                                                                                     },§§goto(addr172))
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              if(_loc7_ || this)
                                                                                                                              {
                                                                                                                                 this.§_-0Dx§ = new §_-6U§("http://www.youtube.com/v/-eyig_V-_5o");
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       (§_-s0§.getItemByName("MovieClip_YouTubeArea") as §_-k6§).changeMovieClip(this.§_-0Dx§);
                                                                                                                                       if(_loc8_ && param2)
                                                                                                                                       {
                                                                                                                                          break loop9;
                                                                                                                                       }
                                                                                                                                       continue loop2;
                                                                                                                                    }
                                                                                                                                    break loop9;
                                                                                                                                    addr44:
                                                                                                                                 }
                                                                                                                                 break loop9;
                                                                                                                              }
                                                                                                                              §§goto(addr340);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr207);
                                                                                                                        }
                                                                                                                        §§goto(addr296);
                                                                                                                     }
                                                                                                                     §§goto(addr146);
                                                                                                                  }
                                                                                                                  §§goto(addr386);
                                                                                                            }
                                                                                                            return;
                                                                                                            §§push(13);
                                                                                                         }
                                                                                                         §§goto(addr700);
                                                                                                      }
                                                                                                      addr685:
                                                                                                      §§goto(addr686);
                                                                                                      §§push(_loc6_);
                                                                                                   }
                                                                                                   §§goto(addr700);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr636);
                                                                                          }
                                                                                          §§goto(addr700);
                                                                                       }
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(10);
                                                                                             if(!(_loc8_ && param2))
                                                                                             {
                                                                                                §§goto(addr650);
                                                                                             }
                                                                                             §§goto(addr700);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr675);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push("POPUP_CREDITS_CLOSE");
                                                                                          if(_loc8_ && param3)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr685);
                                                                                       }
                                                                                       §§goto(addr700);
                                                                                    }
                                                                                    §§push(_loc6_);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr662:
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§goto(addr675);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr687);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push("ME_POPUP_VIDEO");
                                                                                       }
                                                                                       §§goto(addr687);
                                                                                    }
                                                                                    §§goto(addr636);
                                                                                 }
                                                                                 §§goto(addr700);
                                                                              }
                                                                              §§goto(addr593);
                                                                           }
                                                                           §§goto(addr685);
                                                                        }
                                                                     }
                                                                     §§goto(addr616);
                                                                  }
                                                                  §§goto(addr636);
                                                               }
                                                               §§goto(addr700);
                                                            }
                                                            §§goto(addr662);
                                                         }
                                                         §§goto(addr636);
                                                      }
                                                   }
                                                   §§goto(addr519);
                                                }
                                                §§goto(addr511);
                                             }
                                          }
                                          §§goto(addr537);
                                       }
                                       §§goto(addr488);
                                    }
                                 }
                                 §§goto(addr593);
                              }
                              §§goto(addr511);
                           }
                        }
                        §§goto(addr519);
                     }
                     §§goto(addr636);
                  }
                  §§goto(addr700);
               }
               §§goto(addr636);
            }
            §§goto(addr470);
         }
         §§goto(addr412);
      }
   }
}
