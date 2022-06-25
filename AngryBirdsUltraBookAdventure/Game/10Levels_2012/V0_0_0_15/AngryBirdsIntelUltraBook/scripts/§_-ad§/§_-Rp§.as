package §_-ad§
{
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-gt§;
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-0C5§;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §_-Rp§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "ChapterSelectionState";
      
      private static const §_-045§:Number = 0.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-pk§ = "ChapterSelectionState";
            do
            {
               §_-045§ = 0.5;
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      private var §_-1n§:Sprite;
      
      private var §_-gT§:§_-gt§;
      
      private var §_-5C§:Array;
      
      private var §_-k2§:Array;
      
      private var §_-06P§:int = 0;
      
      private var §_-gS§:Number = 0;
      
      private var §_-Nv§:Number = 0;
      
      private var §_-0Ah§:Dictionary;
      
      private var §_-le§:Dictionary;
      
      private var §_-yx§:§_-dd§ = null;
      
      private var §_-OV§:Boolean = false;
      
      private var §_-R5§:Number = 0;
      
      public function §_-Rp§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               §_-s0§ = new §_-5q§(this);
               loop1:
               while(true)
               {
                  §_-s0§.init(§_-vB§.§_-ky§.Views.View_ChapterSelection[0]);
                  loop2:
                  while(_loc1_)
                  {
                     while(true)
                     {
                        this.§_-0F3§();
                        if(!(_loc2_ && _loc1_))
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr67);
      }
      
      override public function activate() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:§_-0C5§ = null;
         if(_loc7_ || _loc3_)
         {
            super.activate();
            if(!_loc6_)
            {
               addr34:
               § in§.§_-Dc§.§_-Vf§(false);
            }
            var _loc1_:int = 0;
            loop0:
            for each(_loc2_ in this.§_-5C§)
            {
               _loc3_ = LevelManager.§_-h8§(_loc1_);
               if(_loc7_ || this)
               {
                  if(_loc2_.Textfield_ME_Score != null)
                  {
                     while(true)
                     {
                        _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§_-80§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§_-q4§(_loc3_);
                        addr176:
                        while(true)
                        {
                        }
                        addr139:
                        if(!(_loc7_ || _loc3_))
                        {
                           continue;
                        }
                        loop4:
                        while(true)
                        {
                           if(_loc2_.Textfield_Score != null)
                           {
                              loop5:
                              while(!(_loc6_ && this))
                              {
                                 _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§_-Od§(_loc3_);
                                 loop6:
                                 while(true)
                                 {
                                    addr66:
                                    while(true)
                                    {
                                       _loc1_++;
                                       if(!(_loc7_ || _loc2_))
                                       {
                                          continue loop6;
                                       }
                                       if(_loc6_)
                                       {
                                          continue loop5;
                                       }
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          if(false)
                                          {
                                             continue loop4;
                                          }
                                          continue loop0;
                                       }
                                       addr122:
                                       while(true)
                                       {
                                          _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§_-Zh§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§_-C§(_loc3_);
                                          break loop5;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    break loop4;
                                 }
                                 §§goto(addr139);
                              }
                           }
                           §§goto(addr66);
                        }
                        §§goto(addr176);
                        addr96:
                     }
                  }
                  while(true)
                  {
                     if(_loc2_.Textfield_CollectedStars != null)
                     {
                        §§goto(addr122);
                     }
                     §§goto(addr96);
                     §§goto(addr176);
                  }
               }
               §§goto(addr122);
            }
            return;
         }
         §§goto(addr34);
      }
      
      private function §_-0F3§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§_-0C5§ = null;
         var _loc4_:String = null;
         if(_loc5_)
         {
            this.§_-gT§ = §_-s0§.getItemByName("Container_ChapterSelection") as §_-gt§;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§_-5C§ = [];
                  do
                  {
                     this.§_-k2§ = [];
                  }
                  while(_loc6_ && _loc3_);
                  
                  if(!_loc5_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc1_:* = Number(0);
                  if(!_loc6_)
                  {
                     this.§_-1n§ = new Sprite();
                     loop4:
                     while(true)
                     {
                        this.§_-1n§.y = AngryBirdsFP11.§_-06d§ / 2;
                        while(true)
                        {
                           this.§_-gS§ = AngryBirdsFP11.§_-Uj§ / 2;
                           while(true)
                           {
                              this.§_-1n§.x = this.§_-gS§;
                              loop7:
                              while(true)
                              {
                                 addr84:
                                 while(true)
                                 {
                                    this.§_-gT§.mClip.addChild(this.§_-1n§);
                                    while(_loc5_)
                                    {
                                       this.§_-le§ = new Dictionary();
                                       if(!_loc6_)
                                       {
                                          continue loop7;
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           if(_loc6_ && _loc2_)
                           {
                              continue;
                           }
                           while(false)
                           {
                              §§goto(addr84);
                           }
                           var _loc2_:int = 0;
                           loop11:
                           while(_loc2_ < LevelManager.§_-td§())
                           {
                              _loc3_ = LevelManager.§_-h8§(_loc2_);
                              if(!_loc6_)
                              {
                                 §§push("MovieClip_");
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + _loc3_.menuImage);
                                 }
                                 _loc4_ = §§pop();
                              }
                              loop12:
                              while(true)
                              {
                                 loop13:
                                 while(true)
                                 {
                                    §§push(this.§_-xL§(_loc4_,_loc1_,_loc2_));
                                    if(_loc5_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    _loc1_ = §§pop();
                                    while(_loc5_)
                                    {
                                       _loc2_++;
                                       if(_loc5_ || _loc2_)
                                       {
                                          if(true)
                                          {
                                             break loop13;
                                          }
                                          continue loop13;
                                       }
                                    }
                                    continue loop12;
                                 }
                                 continue loop11;
                              }
                           }
                           if(!_loc6_)
                           {
                              §§push(this.§_-xL§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_));
                              if(!(_loc6_ && this))
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc5_ || _loc1_)
                                 {
                                    addr204:
                                    _loc1_ = §§pop();
                                    if(_loc5_)
                                    {
                                       _loc2_++;
                                       addr207:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§_-xL§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_));
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    addr252:
                                 }
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    while(!(_loc6_ && _loc3_))
                                    {
                                       this.§_-02t§();
                                       if(!_loc6_)
                                       {
                                          return;
                                       }
                                    }
                                    §§goto(addr252);
                                 }
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr207);
                        }
                     }
                  }
                  §§goto(addr82);
               }
            }
         }
         §§goto(addr38);
      }
      
      private function §_-02t§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:* = Number(0);
         if(!_loc5_)
         {
            this.§_-0Ah§ = new Dictionary();
         }
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < this.§_-5C§.length)
         {
            _loc1_ = §_-Fc§.§_-YE§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc6_)
            {
               if(_loc4_ != this.§_-06P§)
               {
                  _loc2_.gotoAndStop("UnSelected");
                  loop13:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        _loc2_.x = AngryBirdsFP11.§_-Uj§ / 2 + _loc3_ - this.§_-5C§.length * _loc2_.width / 2;
                        loop4:
                        while(true)
                        {
                           _loc2_.y = (§_-s0§.getItemByName("Button_Next") as §_-Mu§).y - _loc2_.height / 2;
                           loop5:
                           while(true)
                           {
                              this.§_-gT§.mClip.addChild(_loc2_);
                              loop6:
                              while(true)
                              {
                                 _loc2_.buttonMode = true;
                                 while(true)
                                 {
                                    this.§_-0Ah§[_loc2_] = _loc4_;
                                    while(!_loc5_)
                                    {
                                       if(_loc5_ && _loc1_)
                                       {
                                          continue loop4;
                                       }
                                       if(_loc6_)
                                       {
                                          this.§_-k2§.push(_loc2_);
                                          loop9:
                                          while(_loc6_)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(_loc3_);
                                             if(!_loc5_)
                                             {
                                                §§push(Number(§§pop() + _loc2_.width));
                                             }
                                             _loc3_ = §§pop();
                                             loop10:
                                             while(true)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-xn§);
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(!(_loc6_ || this))
                                                      {
                                                         continue loop13;
                                                      }
                                                      addr79:
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         _loc4_++;
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(true)
                                                               {
                                                                  break loop11;
                                                               }
                                                               continue loop11;
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue;
                                                      }
                                                      addr192:
                                                      while(true)
                                                      {
                                                         _loc2_.gotoAndStop("Selected");
                                                         §§goto(addr79);
                                                      }
                                                   }
                                                   continue loop13;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          continue;
                                       }
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr187:
               }
               §§goto(addr192);
            }
            §§goto(addr187);
         }
         if(!_loc5_)
         {
            §§push(this.§_-5C§.length * _loc2_.width);
            if(!_loc5_)
            {
               §§push(§§pop() / 2);
               if(_loc6_)
               {
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(!(_loc5_ && _loc1_))
                  {
                     addr227:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  if(_loc6_ || _loc1_)
                  {
                     (§_-s0§.getItemByName("Button_Next") as §_-Mu§).x = AngryBirdsFP11.§_-Uj§ / 2;
                     loop14:
                     while(true)
                     {
                        (§_-s0§.getItemByName("Button_Prev") as §_-Mu§).x = AngryBirdsFP11.§_-Uj§ / 2;
                        while(true)
                        {
                           (§_-s0§.getItemByName("Button_Next") as §_-Mu§).x = (§_-s0§.getItemByName("Button_Next") as §_-Mu§).x + (_loc3_ + 10);
                           loop16:
                           while(_loc6_ || _loc2_)
                           {
                              while(true)
                              {
                                 (§_-s0§.getItemByName("Button_Prev") as §_-Mu§).x = (§_-s0§.getItemByName("Button_Prev") as §_-Mu§).x - (_loc3_ + 10);
                                 if(_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    continue loop14;
                                 }
                                 continue loop16;
                              }
                              return;
                           }
                        }
                     }
                  }
                  §§goto(addr262);
               }
            }
            §§goto(addr227);
         }
         §§goto(addr297);
      }
      
      private function §_-xL§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§_-0C5§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(!(_loc7_ && param2))
         {
            if(§_-Fc§.§_-TY§(param1))
            {
               addr37:
               _loc4_ = LevelManager.§_-h8§(param3);
               (_loc6_ = new (_loc5_ = §_-Fc§.§_-YE§(param1))()).x = param2;
               if(_loc8_ || param2)
               {
                  this.§_-1n§.addChild(_loc6_);
               }
               while(true)
               {
                  this.§_-5C§.push(_loc6_);
                  loop1:
                  while(true)
                  {
                     §§push(param2);
                     if(_loc8_)
                     {
                        §§push(§§pop() + _loc6_.width * 1.55);
                        if(_loc8_)
                        {
                           addr232:
                           §§push(Number(§§pop()));
                        }
                        param2 = §§pop();
                        while(true)
                        {
                           this.§_-le§[_loc6_] = param3;
                           continue loop1;
                        }
                        addr234:
                     }
                     §§goto(addr232);
                  }
               }
            }
            §§goto(addr246);
         }
         §§goto(addr37);
      }
      
      private function §_-xn§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(!this.§_-OV§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.§_-ND§(this.§_-0Ah§[param1.target]);
               }
            }
         }
      }
      
      private function §_-04o§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         if(_loc4_)
         {
            §§push(this.§_-OV§);
            if(_loc4_ || param1)
            {
               if(!§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr43:
                     if(!(param1.currentTarget is MovieClip))
                     {
                        return;
                     }
                     if(_loc4_ || _loc3_)
                     {
                     }
                     addr71:
                     if(this.§_-06P§ != this.§_-le§[_loc2_])
                     {
                        if(!(_loc3_ && this))
                        {
                           addr85:
                           this.§_-ND§(this.§_-le§[_loc2_]);
                           if(_loc3_ && _loc2_)
                           {
                              addr136:
                              mNextState = §_-UO§.§_-pk§;
                           }
                           §§goto(addr140);
                        }
                        addr140:
                        return;
                     }
                     if(this.§_-le§[_loc2_] < LevelManager.§_-td§())
                     {
                        if(!(_loc3_ && param1))
                        {
                           LevelManager.§_-07s§ = this.§_-le§[_loc2_];
                           if(_loc4_ || this)
                           {
                           }
                        }
                     }
                     §§goto(addr136);
                     §§goto(addr136);
                  }
                  _loc2_ = MovieClip(param1.currentTarget);
                  if(!_loc3_)
                  {
                     §§goto(addr71);
                  }
                  §§goto(addr85);
               }
               §§goto(addr136);
            }
            §§goto(addr43);
         }
         §§goto(addr71);
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
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() == §_-nG§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     this.§_-6o§();
                     addr89:
                     while(true)
                     {
                        this.§_-04Y§();
                        for(; _loc4_ || _loc3_; if(!(_loc3_ && this))
                        {
                           return §_-nG§.STATE_STATUS_COMPLETED;
                        })
                        {
                           if(_loc4_)
                           {
                              if(mNextState.length > 0)
                              {
                                 if(_loc4_)
                                 {
                                    continue;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                              }
                              return §_-nG§.STATE_STATUS_RUNNING;
                           }
                        }
                     }
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr89);
      }
      
      private function §_-04Y§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() >= this.§_-5C§.length)
               {
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(1000);
                           addr173:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop21:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       _loc2_ = §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(_loc4_ || this)
                                             {
                                                addr152:
                                                §§push(this.§_-5C§);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§pop()[§§pop()].scaleX = 1.1 - _loc2_ / 1000;
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(this.§_-5C§);
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(_loc1_);
                                                            addr128:
                                                            loop4:
                                                            while(true)
                                                            {
                                                               if(_loc3_ && _loc3_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               §§pop()[§§pop()].scaleY = 1.1 - _loc2_ / 1000;
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     break loop4;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(§§pop() <= 1000)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        addr218:
                                                                        while(!_loc4_)
                                                                        {
                                                                        }
                                                                        continue;
                                                                     }
                                                                     continue loop21;
                                                                  }
                                                                  §§goto(addr152);
                                                               }
                                                               continue loop13;
                                                            }
                                                            §§push(this.§_-5C§);
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(_loc1_);
                                                               addr97:
                                                               addr104:
                                                               addr123:
                                                               while(!(_loc4_ || _loc2_))
                                                               {
                                                                  §§goto(addr128);
                                                                  continue loop14;
                                                               }
                                                               §§pop()[§§pop()].alpha = 1 - _loc2_ / 1000 * 1.5;
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-5C§);
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(_loc3_ && _loc2_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(!(_loc4_ || _loc1_))
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  §§push(_loc1_);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§pop()[§§pop()].y = _loc2_ / 1000 * -200;
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                     }
                                                                     _loc1_++;
                                                                     continue loop0;
                                                                     addr83:
                                                                  }
                                                                  §§goto(addr97);
                                                                  §§goto(addr142);
                                                                  §§goto(addr104);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(Number(Math.abs(_loc2_)));
                                                }
                                                addr247:
                                             }
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§push(§§pop() * 0.55);
                                                if(_loc4_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             §§goto(addr218);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr246:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                          }
                                       }
                                       addr245:
                                    }
                                    §§goto(addr247);
                                 }
                                 §§goto(addr246);
                              }
                           }
                        }
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr83);
               }
               else
               {
                  §§push(this.§_-1n§.x + this.§_-5C§[_loc1_].x - AngryBirdsFP11.§_-Uj§ / 2);
               }
               §§goto(addr245);
            }
            §§goto(addr173);
         }
      }
      
      private function §_-6o§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_ || _loc3_)
            {
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        §§push(this.§_-k2§);
                        if(!(_loc3_ && this))
                        {
                           if(_loc4_)
                           {
                              if(§§pop() >= §§pop().length)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       this.§_-R5§ = this.§_-1n§.x;
                                       addr73:
                                       if(_loc4_)
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          loop23:
                                          while(true)
                                          {
                                             loop24:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                addr314:
                                                while(true)
                                                {
                                                   §§push(this.§_-k2§);
                                                   addr316:
                                                   while(true)
                                                   {
                                                      if(§§pop() >= §§pop().length)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§_-k2§);
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(_loc1_);
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§pop()[§§pop()].gotoAndStop("Selected");
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              §§push(-this.§_-1n§.x);
                                                                              loop11:
                                                                              while(_loc4_ || _loc3_)
                                                                              {
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    §§push(800);
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       loop12:
                                                                                       while(_loc4_ || this)
                                                                                       {
                                                                                          if(_loc4_ || _loc1_)
                                                                                          {
                                                                                             §§push(this.§_-5C§);
                                                                                             loop13:
                                                                                             while(_loc4_ || _loc1_)
                                                                                             {
                                                                                                §§push(_loc1_);
                                                                                                loop14:
                                                                                                for(; _loc4_; §§push(_loc1_),if(!(_loc4_ || _loc1_))
                                                                                                {
                                                                                                   continue;
                                                                                                },if(_loc4_)
                                                                                                {
                                                                                                   §§goto(addr204);
                                                                                                },§§goto(addr402))
                                                                                                {
                                                                                                   §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                   if(_loc4_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc4_ || this)
                                                                                                      {
                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr204:
                                                                                                                     §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                                     if(!(_loc4_ || _loc1_))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(_loc4_ || _loc1_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc2_ = §§pop();
                                                                                                                                 }
                                                                                                                                 addr226:
                                                                                                                              }
                                                                                                                              loop22:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 loop4:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc2_);
                                                                                                                                    addr85:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§_-k2§);
                                                                                                                                       addr87:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop() >= §§pop().length)
                                                                                                                                          {
                                                                                                                                             if(!(_loc3_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(_loc4_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§_-k2§);
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                            if(_loc4_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop8;
                                                                                                                                                               }
                                                                                                                                                               §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc3_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        loop2:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc1_++;
                                                                                                                                                                           addr80:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop2;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop4;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr169:
                                                                                                                                                                                 _loc2_++;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop0;
                                                                                                                                                                        addr78:
                                                                                                                                                                     }
                                                                                                                                                                     continue loop9;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop22;
                                                                                                                                                               }
                                                                                                                                                               addr124:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr152:
                                                                                                                                                               if(_loc4_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                                     addr351:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc2_++;
                                                                                                                                                                        continue loop23;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr348:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(_loc3_ && _loc1_)
                                                                                                                                                            {
                                                                                                                                                               continue loop7;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr169);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr347:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr348);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr144:
                                                                                                                                                         if(_loc3_ && _loc3_)
                                                                                                                                                         {
                                                                                                                                                            continue loop7;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr152);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr402:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§_-R5§);
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            continue loop12;
                                                                                                                                                         }
                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                      }
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§_-5C§);
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            continue loop14;
                                                                                                                                                         }
                                                                                                                                                         continue loop13;
                                                                                                                                                      }
                                                                                                                                                      continue loop11;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                                                                                      addr405:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         addr406:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                               }
                                                                                                                                                               addr407:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr379:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc4_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc2_ = §§pop();
                                                                                                                                                                              addr390:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop24;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr389:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop7;
                                                                                                                                                                     addr381:
                                                                                                                                                                  }
                                                                                                                                                                  continue loop10;
                                                                                                                                                               }
                                                                                                                                                               addr380:
                                                                                                                                                            }
                                                                                                                                                            addr408:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§_-R5§);
                                                                                                                                                               break loop11;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr311:
                                                                                                                                                   addr402:
                                                                                                                                                }
                                                                                                                                                §§goto(addr390);
                                                                                                                                             }
                                                                                                                                             §§goto(addr124);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(this.§_-k2§);
                                                                                                                                          }
                                                                                                                                          §§goto(addr144);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr78);
                                                                                                                        }
                                                                                                                        addr221:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr405);
                                                                                                                     }
                                                                                                                     §§goto(addr406);
                                                                                                                  }
                                                                                                                  addr310:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr221);
                                                                                                               }
                                                                                                               §§goto(addr311);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr406);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr407);
                                                                                                      }
                                                                                                      §§goto(addr380);
                                                                                                   }
                                                                                                   §§goto(addr310);
                                                                                                }
                                                                                                §§goto(addr379);
                                                                                                §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                             }
                                                                                             addr358:
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                §§goto(addr366);
                                                                                                §§push(_loc1_);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(800);
                                                                                                addr398:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr399:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§_-5C§);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr397:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr402);
                                                                                          }
                                                                                       }
                                                                                       addr356:
                                                                                       §§goto(addr358);
                                                                                       §§push(this.§_-5C§);
                                                                                    }
                                                                                    §§goto(addr398);
                                                                                 }
                                                                                 §§goto(addr399);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr356);
                                                                                 §§goto(addr408);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr381);
                                                                     }
                                                                     §§goto(addr351);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(this.§_-k2§);
                                                      }
                                                      §§goto(addr347);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr80);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr73);
                              }
                              else
                              {
                                 §§push(-this.§_-1n§.x);
                              }
                              §§goto(addr397);
                           }
                           §§goto(addr316);
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr389);
                  }
                  §§goto(addr314);
               }
               §§goto(addr226);
            }
            §§goto(addr85);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.deActivate();
            while(true)
            {
               § in§.§_-Dc§.clearLevel();
               while(_loc1_ || _loc2_)
               {
                  (§_-s0§.getItemByName("Button_Back") as §_-Mu§).setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  if(!(_loc1_ || this))
                  {
                     continue;
                  }
                  return;
                  addr64:
               }
            }
         }
         §§goto(addr64);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            §§push("BACK");
            if(_loc7_ || this)
            {
               §§push(_loc4_);
               if(!_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc7_)
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                        }
                        §§goto(addr260);
                     }
                     else
                     {
                        §§goto(addr212);
                     }
                  }
                  else
                  {
                     §§push("PREV");
                     if(_loc7_)
                     {
                        §§push(_loc4_);
                        if(_loc7_)
                        {
                           addr209:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc6_)
                              {
                                 addr212:
                                 §§push(1);
                                 if(!(_loc7_ || param1))
                                 {
                                    addr248:
                                 }
                              }
                              §§goto(addr260);
                           }
                           else
                           {
                              §§push("NEXT");
                              if(!_loc6_)
                              {
                                 addr234:
                                 §§push(_loc4_);
                                 if(!_loc6_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          addr245:
                                          §§push(2);
                                          if(_loc7_)
                                          {
                                             §§goto(addr248);
                                          }
                                       }
                                       else
                                       {
                                          addr252:
                                          §§push(3);
                                          if(!_loc7_)
                                          {
                                          }
                                       }
                                       §§goto(addr260);
                                    }
                                    else
                                    {
                                       §§push("FULLSCREEN_BUTTON");
                                    }
                                    §§goto(addr252);
                                 }
                                 addr251:
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr252);
                                 }
                                 else
                                 {
                                    addr260:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §_-pX§.playSound("Menu_Back");
                                          addr30:
                                          mNextState = §_-05N§.§_-pk§;
                                          if(_loc7_ || param1)
                                          {
                                             break;
                                          }
                                          AngryBirdsFP11.§_-07§.§_-0De§();
                                          addr172:
                                          if(_loc7_)
                                          {
                                             if(!_loc6_)
                                             {
                                                addr157:
                                                if(true)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                addr177:
                                             }
                                             addr160:
                                             break;
                                          }
                                          break;
                                          addr172:
                                          break;
                                          addr48:
                                       case 1:
                                          §_-pX§.playSound("Menu_Confirm");
                                          if(!_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr30);
                                                }
                                                else
                                                {
                                                   §§push(this.§_-OV§);
                                                   if(_loc7_ || param3)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            addr61:
                                                            §§push((_loc4_ = this).§_-06P§);
                                                            if(!(_loc6_ && this))
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            var _loc5_:* = §§pop();
                                                            if(_loc7_)
                                                            {
                                                               _loc4_.§_-06P§ = _loc5_;
                                                            }
                                                            if(!(_loc6_ && param3))
                                                            {
                                                               this.§_-ND§(this.§_-06P§);
                                                               if(_loc7_)
                                                               {
                                                                  addr94:
                                                                  break;
                                                               }
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr116:
                                                            §§push((_loc4_ = this).§_-06P§);
                                                            if(_loc7_ || this)
                                                            {
                                                               §§push(§§pop() + 1);
                                                            }
                                                            _loc5_ = §§pop();
                                                            if(!_loc6_)
                                                            {
                                                               _loc4_.§_-06P§ = _loc5_;
                                                            }
                                                            if(_loc7_)
                                                            {
                                                               this.§_-ND§(this.§_-06P§);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr172);
                                                            }
                                                            §§goto(addr177);
                                                         }
                                                         §§goto(addr157);
                                                      }
                                                      §§goto(addr94);
                                                   }
                                                   else
                                                   {
                                                      addr108:
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§goto(addr116);
                                                         }
                                                         break;
                                                      }
                                                   }
                                                }
                                                §§goto(addr160);
                                             }
                                             else
                                             {
                                                §§goto(addr48);
                                             }
                                          }
                                          §§goto(addr61);
                                       case 2:
                                          §_-pX§.playSound("Menu_Confirm");
                                          if(_loc7_ || this)
                                          {
                                             §§goto(addr108);
                                             §§push(this.§_-OV§);
                                          }
                                          §§goto(addr172);
                                       case 3:
                                          §_-pX§.playSound("Menu_Confirm");
                                          if(_loc7_ || param3)
                                          {
                                             §§goto(addr172);
                                          }
                                    }
                                    return;
                                    §§push(4);
                                 }
                                 §§goto(addr260);
                              }
                              §§goto(addr251);
                              §§push(_loc4_);
                           }
                           §§goto(addr252);
                        }
                        §§goto(addr251);
                     }
                     §§goto(addr234);
                  }
                  §§goto(addr260);
               }
               §§goto(addr209);
            }
            §§goto(addr234);
         }
         §§goto(addr245);
      }
      
      private function §_-ND§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc2_)
         {
            this.§_-OV§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               for(; §§pop() <= this.§_-5C§.length - 1; if(_loc5_ && param1)
               {
                  continue;
               },if(§§pop() < 0)
               {
                  §§goto(addr64);
               },§§goto(addr25))
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     if(_loc6_ || _loc2_)
                     {
                        continue;
                     }
                     addr97:
                     while(true)
                     {
                        param1 = §§pop();
                        loop4:
                        while(true)
                        {
                           addr42:
                           while(true)
                           {
                              addr25:
                              loop6:
                              while(true)
                              {
                                 this.§_-06P§ = param1;
                                 if(_loc6_)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop4;
                                    }
                                    addr64:
                                    while(true)
                                    {
                                       §§push(0);
                                       addr65:
                                       while(true)
                                       {
                                          param1 = §§pop();
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc5_ && this)
                                    {
                                       break loop1;
                                    }
                                    continue loop6;
                                 }
                                 addr105:
                                 §§push(-§§pop()[param1].x);
                                 addr117:
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() + this.§_-gS§);
                                    if(!_loc5_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc2_:* = §§pop();
                                 §§push(this.§_-1n§.x - _loc2_);
                                 if(!_loc5_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 var _loc4_:*;
                                 §§push(_loc4_ = Number(Math.abs(_loc3_)));
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(400);
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(_loc6_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(§§pop());
                                             if(_loc6_ || param1)
                                             {
                                                _loc4_ = §§pop();
                                                if(_loc6_)
                                                {
                                                   addr185:
                                                   §§push(§_-045§);
                                                   if(!_loc5_)
                                                   {
                                                      addr188:
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc5_)
                                                      {
                                                         addr214:
                                                         §§push(Number(§§pop()));
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            addr199:
                                                            §§push(§§pop());
                                                         }
                                                         _loc4_ = §§pop();
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            addr287:
                                                            §§push(this.§_-yx§);
                                                            while(true)
                                                            {
                                                               if(§§pop() != null)
                                                               {
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                     addr298:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§_-yx§);
                                                                        addr300:
                                                                        while(true)
                                                                        {
                                                                           §§pop().stop();
                                                                        }
                                                                     }
                                                                     addr298:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr301:
                                                               }
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  this.§_-yx§ = §_-cx§.§_-3S§.§_-Wf§(this.§_-1n§,{"x":_loc2_},null,_loc4_,§_-cx§.§_-037§);
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§_-yx§);
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§pop().onComplete = this.§_-Mp§;
                                                                           while(_loc6_)
                                                                           {
                                                                              continue loop15;
                                                                              §§pop().play();
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break loop13;
                                                                                 }
                                                                                 break loop15;
                                                                              }
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        §§goto(addr300);
                                                                     }
                                                                     §§goto(addr301);
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                         }
                                                         §§goto(addr298);
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                   _loc4_ = §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      addr204:
                                                      if(§§pop() > 1)
                                                      {
                                                         if(_loc6_ || this)
                                                         {
                                                            §§goto(addr214);
                                                            §§push(Number(1));
                                                         }
                                                         §§goto(addr298);
                                                      }
                                                      §§goto(addr287);
                                                   }
                                                   §§goto(addr214);
                                                }
                                                §§goto(addr199);
                                             }
                                             §§goto(addr188);
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr185);
                                    }
                                    §§goto(addr204);
                                 }
                                 §§goto(addr185);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr65);
               }
               while(true)
               {
                  if(_loc5_)
                  {
                     continue loop0;
                  }
                  §§push(this.§_-5C§);
                  if(_loc6_)
                  {
                     §§push(§§pop().length - 1);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§goto(addr97);
                        §§push(int(§§pop()));
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr105);
               }
            }
         }
         §§goto(addr40);
      }
      
      private function §_-Mp§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() >= this.§_-k2§.length)
               {
                  if(_loc3_ || this)
                  {
                     if(_loc3_)
                     {
                        if(!_loc2_)
                        {
                           this.§_-OV§ = false;
                           addr56:
                           if(!(_loc3_ || this))
                           {
                              continue;
                           }
                           if(!(_loc2_ && _loc1_))
                           {
                              break;
                           }
                           addr107:
                        }
                        else
                        {
                           addr117:
                           this.§_-k2§[_loc1_].gotoAndStop("Selected");
                           addr120:
                           addr114:
                           addr116:
                        }
                        addr71:
                        _loc1_++;
                        continue;
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr56);
               }
               else
               {
                  addr111:
                  if(_loc1_ == this.§_-06P§)
                  {
                     §§goto(addr114);
                  }
                  else
                  {
                     §§push(this.§_-k2§);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(_loc1_);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr107);
                        }
                        else
                        {
                           §§goto(addr117);
                        }
                     }
                     else
                     {
                        §§goto(addr116);
                     }
                     §§goto(addr117);
                  }
               }
               §§goto(addr117);
            }
            §§goto(addr111);
         }
      }
   }
}
