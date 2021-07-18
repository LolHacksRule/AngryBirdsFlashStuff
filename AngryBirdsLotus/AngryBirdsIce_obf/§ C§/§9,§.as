package § C§
{
   import §!Y§.§[o§;
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§&9§;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §[v§.§&F§;
   import §[v§.§^P§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   import com.rovio.assets.§>D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §9,§ extends §-§
   {
      
      public static const §?B§:String = "ChapterSelectionState";
      
      private static const §,2§:Number = 0.5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?B§ = "ChapterSelectionState";
            do
            {
               §,2§ = 0.5;
            }
            while(_loc2_);
            
         }
      }
      
      private var §!n§:Sprite;
      
      private var §#-§:§&F§;
      
      private var §+! §:Array;
      
      private var §[W§:Array;
      
      private var §7a§:int = 0;
      
      private var §+Y§:Number = 0;
      
      private var §12§:Number = 0;
      
      private var §+!#§:Dictionary;
      
      private var §2;§:Dictionary;
      
      private var §']§:§?A§ = null;
      
      private var §]n§:Boolean = false;
      
      private var §<§:Number = 0;
      
      public function §9,§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            §,R§ = new §#H§(this);
            while(true)
            {
               §,R§.init(§set §.§&!1§.Views.View_ChapterSelection[0]);
               while(!(_loc1_ && _loc1_))
               {
                  continue loop0;
                  this.§5o§();
                  if(!(_loc1_ && _loc1_))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:§&9§ = null;
         if(!_loc7_)
         {
            super.activate();
            if(_loc6_ || _loc2_)
            {
               §[o§.§='§.§"3§(false);
            }
         }
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = this.§+! §;
         loop0:
         for(; §§hasnext(_loc5_,_loc4_); do
         {
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§64§.§3<§(_loc3_);
            }
            _loc1_++;
         }
         while(false);
         )
         {
            _loc2_ = §§nextvalue(_loc4_,_loc5_);
            _loc3_ = §0$§.§]>§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               while(true)
               {
                  _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§64§.§@!=§(_loc3_) + "/" + AngryBirdsFP11.§64§.§'o§(_loc3_);
                  addr91:
                  _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§64§.§!!E§(_loc3_) + "/" + AngryBirdsFP11.§64§.§9b§(_loc3_);
                  if(!(_loc7_ && _loc3_))
                  {
                     continue loop0;
                  }
               }
               addr128:
            }
            while(_loc2_.Textfield_CollectedStars != null)
            {
               §§goto(addr91);
               §§goto(addr128);
            }
         }
      }
      
      private function §5o§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§&9§ = null;
         var _loc4_:String = null;
         if(!(_loc5_ && _loc1_))
         {
            this.§#-§ = §,R§.getItemByName("Container_ChapterSelection") as §&F§;
            loop0:
            while(true)
            {
               addr46:
               while(true)
               {
                  this.§+! § = [];
                  continue loop0;
               }
            }
            addr58:
         }
         while(true)
         {
            this.§[W§ = [];
            if(_loc5_)
            {
               continue;
            }
            if(!(_loc5_ && _loc2_))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr58);
            }
            §§goto(addr46);
         }
         var _loc1_:* = Number(0);
         this.§!n§ = new Sprite();
         this.§!n§.y = AngryBirdsFP11.screenHeight / 2;
         this.§+Y§ = AngryBirdsFP11.screenWidth / 2;
         loop3:
         while(true)
         {
            this.§!n§.x = this.§+Y§;
            loop4:
            do
            {
               this.§#-§.mClip.addChild(this.§!n§);
               while(_loc6_)
               {
                  this.§2;§ = new Dictionary();
                  if(_loc6_)
                  {
                     continue loop4;
                  }
               }
               continue loop3;
            }
            while(false);
            
            var _loc2_:int = 0;
            loop6:
            while(_loc2_ < §0$§.§ l§())
            {
               _loc3_ = §0$§.§]>§(_loc2_);
               if(!_loc5_)
               {
                  §§push("MovieClip_");
                  if(!_loc5_)
                  {
                     §§push(§§pop() + _loc3_.menuImage);
                  }
                  _loc4_ = §§pop();
               }
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     §§push(this.§'!$§(_loc4_,_loc1_,_loc2_));
                     if(!(_loc5_ && _loc1_))
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc1_ = §§pop();
                     while(_loc6_)
                     {
                        _loc2_++;
                        if(_loc6_ || _loc1_)
                        {
                           if(true)
                           {
                              break loop8;
                           }
                           continue loop8;
                        }
                     }
                     continue loop7;
                  }
                  continue loop6;
               }
            }
            if(_loc6_ || this)
            {
               §§push(this.§'!$§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_));
               if(!(_loc5_ && _loc3_))
               {
                  §§push(Number(§§pop()));
                  if(!(_loc5_ && _loc1_))
                  {
                     _loc1_ = §§pop();
                     if(!(_loc5_ && _loc1_))
                     {
                        _loc2_++;
                        while(true)
                        {
                           §§push(this.§'!$§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_));
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(Number(§§pop()));
                           }
                           addr251:
                           §§goto(addr235);
                        }
                     }
                     §§goto(addr235);
                  }
               }
               while(true)
               {
                  _loc1_ = §§pop();
                  §§goto(addr251);
               }
            }
            addr235:
            do
            {
               if(!(_loc5_ && _loc2_))
               {
                  continue;
               }
               continue loop10;
            }
            while(this.§<!A§(), _loc5_ && this);
            
            addr235:
            return;
         }
      }
      
      private function §<!A§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:* = Number(0);
         if(!(_loc5_ && _loc3_))
         {
            this.§+!#§ = new Dictionary();
         }
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < this.§+! §.length)
         {
            _loc1_ = §>D§.§`C§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc6_ || this)
            {
               if(_loc4_ != this.§7a§)
               {
                  _loc2_.gotoAndStop("UnSelected");
                  loop1:
                  while(true)
                  {
                     _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§+! §.length * _loc2_.width / 2;
                     loop2:
                     for(; !(_loc5_ && _loc3_); if(_loc5_ && _loc1_)
                     {
                        continue;
                     },if(true)
                     {
                        continue loop0;
                     },§§goto(addr83))
                     {
                        _loc2_.y = (§,R§.getItemByName("Button_Next") as §^P§).y - _loc2_.height / 2;
                        loop3:
                        while(true)
                        {
                           this.§#-§.mClip.addChild(_loc2_);
                           loop4:
                           while(true)
                           {
                              _loc2_.buttonMode = true;
                              this.§+!#§[_loc2_] = _loc4_;
                              while(!_loc5_)
                              {
                                 continue loop4;
                                 while(true)
                                 {
                                    _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§]j§);
                                    do
                                    {
                                       _loc4_++;
                                    }
                                    while(_loc5_ && this);
                                    
                                    if(!(_loc6_ || this))
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     addr202:
                     while(true)
                     {
                        _loc2_.gotoAndStop("Selected");
                        continue loop1;
                     }
                  }
               }
               §§goto(addr202);
            }
            §§goto(addr127);
         }
         if(_loc6_)
         {
            §§push(this.§+! §.length * _loc2_.width);
            if(_loc6_)
            {
               §§push(§§pop() / 2);
               if(_loc6_ || this)
               {
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(_loc5_)
                  {
                  }
                  addr238:
                  _loc3_ = §§pop();
                  if(!(_loc5_ && this))
                  {
                     (§,R§.getItemByName("Button_Next") as §^P§).x = AngryBirdsFP11.screenWidth / 2;
                     addr340:
                     while(true)
                     {
                        (§,R§.getItemByName("Button_Prev") as §^P§).x = AngryBirdsFP11.screenWidth / 2;
                        while(_loc6_ || _loc1_)
                        {
                           (§,R§.getItemByName("Button_Next") as §^P§).x = (§,R§.getItemByName("Button_Next") as §^P§).x + (_loc3_ + 10);
                           do
                           {
                              (§,R§.getItemByName("Button_Prev") as §^P§).x = (§,R§.getItemByName("Button_Prev") as §^P§).x - (_loc3_ + 10);
                           }
                           while(!(_loc6_ || _loc2_));
                           
                           if(_loc6_ || this)
                           {
                              return;
                           }
                        }
                     }
                     addr340:
                  }
                  §§goto(addr340);
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr238);
         }
         §§goto(addr340);
      }
      
      private function §'!$§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§&9§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(_loc8_ || this)
         {
            if(§>D§.§2q§(param1))
            {
               addr37:
               _loc4_ = §0$§.§]>§(param3);
               (_loc6_ = new (_loc5_ = §>D§.§`C§(param1))()).x = param2;
               if(!(_loc7_ && param3))
               {
                  this.§!n§.addChild(_loc6_);
                  this.§+! §.push(_loc6_);
                  while(true)
                  {
                     §§push(param2);
                     if(!(_loc7_ && param3))
                     {
                        §§push(§§pop() + _loc6_.width * 1.55);
                        if(_loc8_)
                        {
                           addr216:
                           §§push(Number(§§pop()));
                        }
                        param2 = §§pop();
                        while(true)
                        {
                           this.§2;§[_loc6_] = param3;
                           loop2:
                           while(true)
                           {
                              _loc6_.addEventListener(MouseEvent.CLICK,this.§7r§);
                              if(_loc7_ && this)
                              {
                                 break;
                              }
                              _loc6_.buttonMode = true;
                              loop3:
                              while(true)
                              {
                                 if(_loc6_.Textfield_CollectedStars != null)
                                 {
                                    while(!_loc7_)
                                    {
                                       _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§64§.§!!E§(_loc4_) + "/" + AngryBirdsFP11.§64§.§9b§(_loc4_);
                                    }
                                    continue loop2;
                                    addr145:
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc6_.Textfield_Score == null)
                                    {
                                       loop8:
                                       while(_loc6_.Textfield_ME_Score != null)
                                       {
                                          if(!(_loc7_ && param3))
                                          {
                                             if(!(_loc8_ || param2))
                                             {
                                                continue loop3;
                                             }
                                             _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§64§.§@!=§(_loc4_) + "/" + AngryBirdsFP11.§64§.§'o§(_loc4_);
                                          }
                                          addr96:
                                          if(_loc8_ || param3)
                                          {
                                             if(_loc8_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             §§goto(addr145);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                continue loop8;
                                                §§goto(addr96);
                                             }
                                             addr139:
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr230:
                                    }
                                    continue loop3;
                                    return param2;
                                 }
                              }
                           }
                        }
                        addr218:
                     }
                     §§goto(addr216);
                  }
               }
               §§goto(addr218);
            }
            §§goto(addr230);
         }
         §§goto(addr37);
      }
      
      private function §]j§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this.§]n§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr38:
                  this.§#!&§(this.§+!#§[param1.target]);
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      private function §7r§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MovieClip = null;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§]n§);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     addr42:
                     if(!(param1.currentTarget is MovieClip))
                     {
                        return;
                     }
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc2_ = MovieClip(param1.currentTarget);
                        if(_loc3_ || _loc2_)
                        {
                           addr75:
                           if(this.§7a§ != this.§2;§[_loc2_])
                           {
                              if(!_loc4_)
                              {
                                 this.§#!&§(this.§2;§[_loc2_]);
                                 if(_loc4_ && param1)
                                 {
                                    addr122:
                                    §0$§.§=l§ = this.§2;§[_loc2_];
                                    if(_loc4_)
                                    {
                                    }
                                 }
                                 §§goto(addr134);
                              }
                              addr130:
                              mNextState = §4t§.§?B§;
                           }
                           else if(this.§2;§[_loc2_] < §0$§.§ l§())
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr122);
                              }
                              §§goto(addr130);
                           }
                        }
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr75);
               }
               addr134:
               return;
            }
            §§goto(addr42);
         }
         §§goto(addr75);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_ || param1)
         {
            if(§§pop() != §-§.STATE_STATUS_RUNNING)
            {
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr103);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr104:
               }
            }
            while(true)
            {
               this.§%`§();
               while(!_loc3_)
               {
                  this.§!!;§();
                  if(_loc4_ || _loc2_)
                  {
                     if(mNextState.length > 0)
                     {
                        if(!_loc3_)
                        {
                           return §-§.STATE_STATUS_COMPLETED;
                        }
                     }
                     return §-§.STATE_STATUS_RUNNING;
                  }
               }
               §§goto(addr104);
            }
         }
         addr103:
         return _loc2_;
      }
      
      private function §!!;§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop() >= this.§+! §.length)
               {
                  if(_loc4_ || _loc1_)
                  {
                     break;
                  }
                  loop1:
                  for(; _loc2_ > 1000; while(true)
                  {
                     _loc2_ = §§pop();
                     continue loop1;
                  })
                  {
                     §§push(1000);
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_ && _loc1_)
                        {
                           continue loop1;
                        }
                        if(!(_loc3_ && this))
                        {
                           _loc2_ = §§pop();
                           while(true)
                           {
                              break loop1;
                           }
                           addr167:
                        }
                        else
                        {
                           while(true)
                           {
                              _loc2_ = Number(§§pop());
                              _loc2_ = Number(Math.abs(_loc2_));
                              §§push(_loc2_ * 0.55);
                              if(!_loc3_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              continue loop1;
                           }
                           addr210:
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.§+! §);
                     while(true)
                     {
                        §§push(_loc1_);
                        loop4:
                        while(true)
                        {
                           §§pop()[§§pop()].scaleX = 1.1 - _loc2_ / 1000;
                           §§push(this.§+! §);
                           loop5:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr126:
                              while(true)
                              {
                                 §§pop()[§§pop()].scaleY = 1.1 - _loc2_ / 1000;
                                 addr133:
                                 while(true)
                                 {
                                    §§push(this.§+! §);
                                    continue loop5;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                     §§goto(addr167);
                  }
               }
               else
               {
                  §§push(this.§!n§.x + this.§+! §[_loc1_].x - AngryBirdsFP11.screenWidth / 2);
               }
               §§goto(addr210);
            }
            §§goto(addr151);
         }
      }
      
      private function §%`§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(_loc4_ || this)
               {
                  §§push(this.§[W§);
                  if(!(_loc3_ && this))
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        if(_loc4_)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              if(!_loc3_)
                              {
                                 this.§<§ = this.§!n§.x;
                                 addr64:
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       break;
                                    }
                                    loop23:
                                    while(true)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(0);
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                _loc2_ = §§pop();
                                                loop25:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   addr93:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(this.§[W§);
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(§§pop() >= §§pop().length)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(this.§[W§);
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        if(_loc4_ || _loc1_)
                                                                        {
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§push(_loc1_);
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                    loop30:
                                                                                    while(true)
                                                                                    {
                                                                                       loop31:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc1_++;
                                                                                          addr81:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_ && _loc2_)
                                                                                             {
                                                                                                continue loop30;
                                                                                             }
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr300:
                                                                                             while(true)
                                                                                             {
                                                                                                loop9:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(-this.§!n§.x);
                                                                                                   §§push(800);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      loop10:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§+! §);
                                                                                                         addr248:
                                                                                                         loop11:
                                                                                                         while(_loc4_ || this)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               addr321:
                                                                                                               §§push(_loc1_);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                     addr263:
                                                                                                                  }
                                                                                                                  §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                  while(!(_loc3_ && this))
                                                                                                                  {
                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc3_ && this))
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              continue loop10;
                                                                                                                           }
                                                                                                                           addr223:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              continue loop23;
                                                                                                                           }
                                                                                                                           continue loop31;
                                                                                                                        }
                                                                                                                        while(§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              §§push(this.§<§);
                                                                                                                              addr317:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                                 §§push(this.§+! §);
                                                                                                                                 break loop11;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                        addr361:
                                                                                                                     }
                                                                                                                     loop15:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr361);
                                                                                                                        §§push(§§pop());
                                                                                                                        addr357:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr341);
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     break loop9;
                                                                                                                  }
                                                                                                                  §§push(_loc1_);
                                                                                                                  addr201:
                                                                                                                  continue loop9;
                                                                                                                  if(!(_loc4_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§goto(addr223);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr263);
                                                                                                                  }
                                                                                                                  §§goto(addr362);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr357);
                                                                                                                  }
                                                                                                                  §§goto(addr341);
                                                                                                               }
                                                                                                               addr321:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                               addr356:
                                                                                                            }
                                                                                                            §§goto(addr357);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr321);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr353:
                                                                                                   }
                                                                                                   §§goto(addr356);
                                                                                                }
                                                                                                §§push(0);
                                                                                                addr344:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc2_ = §§pop();
                                                                                                   addr345:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      loop2:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         addr290:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§[W§);
                                                                                                            addr292:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() < §§pop().length)
                                                                                                               {
                                                                                                                  §§push(this.§[W§);
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§[W§);
                                                                                                                  addr296:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc1_);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr309:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc2_);
                                                                                                               addr310:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                  addr313:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc2_++;
                                                                                                                     addr303:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop31;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                    §§goto(addr300);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr156:
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                    addr161:
                                                                                    if(!(_loc3_ && _loc1_))
                                                                                    {
                                                                                       _loc2_++;
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             continue loop25;
                                                                                          }
                                                                                          §§goto(addr345);
                                                                                          §§goto(addr178);
                                                                                       }
                                                                                       addr178:
                                                                                       addr142:
                                                                                    }
                                                                                    §§goto(addr313);
                                                                                 }
                                                                              }
                                                                              §§goto(addr310);
                                                                           }
                                                                           §§goto(addr309);
                                                                        }
                                                                        §§goto(addr296);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr155:
                                                                        §§push(_loc2_);
                                                                     }
                                                                     §§goto(addr156);
                                                                  }
                                                                  §§goto(addr161);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.§[W§);
                                                               }
                                                               §§goto(addr155);
                                                            }
                                                            §§goto(addr292);
                                                         }
                                                         addr97:
                                                      }
                                                      §§goto(addr344);
                                                   }
                                                }
                                             }
                                             §§goto(addr290);
                                          }
                                          addr233:
                                       }
                                       §§goto(addr294);
                                    }
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr303);
                           }
                           §§goto(addr81);
                        }
                        §§goto(addr64);
                     }
                     else
                     {
                        §§push(-this.§!n§.x);
                        §§push(800);
                     }
                     §§goto(addr353);
                  }
                  §§goto(addr97);
               }
               §§goto(addr233);
            }
            §§goto(addr93);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            do
            {
               §[o§.§='§.clearLevel();
               do
               {
                  (§,R§.getItemByName("Button_Back") as §^P§).setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               while(_loc1_);
               
            }
            while(_loc1_ && this);
            
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            §§push("BACK");
            if(!_loc7_)
            {
               §§push(_loc4_);
               if(!_loc7_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_)
                     {
                        addr159:
                        §§push(0);
                        if(_loc7_ && param3)
                        {
                           addr190:
                        }
                     }
                     else
                     {
                        addr220:
                        §§push(2);
                        if(!(_loc6_ || this))
                        {
                           addr235:
                        }
                     }
                  }
                  else
                  {
                     §§push("PREV");
                     if(!_loc7_)
                     {
                        §§push(_loc4_);
                        if(!_loc7_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc7_ && param1))
                              {
                                 §§push(1);
                                 if(!(_loc7_ && param3))
                                 {
                                    §§goto(addr190);
                                 }
                                 §§goto(addr240);
                              }
                              else
                              {
                                 §§goto(addr220);
                              }
                           }
                           else
                           {
                              §§push("NEXT");
                              if(_loc6_)
                              {
                                 addr194:
                                 §§push(_loc4_);
                                 if(!(_loc7_ && this))
                                 {
                                    addr202:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc7_ && this))
                                       {
                                          §§goto(addr220);
                                       }
                                    }
                                    else
                                    {
                                       addr231:
                                       if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          addr240:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §@6§.playSound("Menu_Back");
                                                if(_loc6_)
                                                {
                                                   addr27:
                                                   mNextState = §,!?§.§?B§;
                                                   break;
                                                }
                                                this.§#!&§(this.§7a§);
                                                addr130:
                                                break;
                                                addr98:
                                                addr142:
                                                addr129:
                                                break;
                                             case 1:
                                                §@6§.playSound("Menu_Confirm");
                                                if(!_loc7_)
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr27);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§]n§);
                                                      if(!_loc7_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            addr46:
                                                            §§push((_loc4_ = this).§7a§);
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            var _loc5_:* = §§pop();
                                                            if(_loc6_)
                                                            {
                                                               _loc4_.§7a§ = _loc5_;
                                                            }
                                                            this.§#!&§(this.§7a§);
                                                         }
                                                         break;
                                                      }
                                                      addr72:
                                                      if(!§§pop())
                                                      {
                                                         §§push((_loc4_ = this).§7a§);
                                                         if(_loc6_ || param2)
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         _loc5_ = §§pop();
                                                         if(!(_loc7_ && this))
                                                         {
                                                            _loc4_.§7a§ = _loc5_;
                                                         }
                                                         §§goto(addr98);
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                }
                                                §§goto(addr46);
                                             case 2:
                                                §@6§.playSound("Menu_Confirm");
                                                §§goto(addr72);
                                             case 3:
                                                §@6§.playSound("Menu_Confirm");
                                                §§push(this.§]n§);
                                                if(_loc6_)
                                                {
                                                   AngryBirdsFP11.§?L§.§,!!§();
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr142);
                                                      }
                                                      §§goto(addr129);
                                                   }
                                                   break;
                                                }
                                          }
                                          return;
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr240);
                                    §§goto(addr240);
                                 }
                              }
                              §§goto(addr231);
                           }
                           §§goto(addr240);
                        }
                        §§goto(addr202);
                     }
                     §§goto(addr194);
                  }
                  §§goto(addr240);
               }
               §§goto(addr231);
            }
            §§goto(addr194);
         }
         §§goto(addr159);
      }
      
      private function §#!&§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         this.§]n§ = true;
         §§push(param1);
         loop0:
         while(true)
         {
            if(§§pop() <= this.§+! §.length - 1)
            {
               §§push(param1);
               if(_loc6_)
               {
                  if(§§pop() < 0)
                  {
                     while(true)
                     {
                        §§push(0);
                        addr42:
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              continue loop0;
                           }
                           addr71:
                           while(true)
                           {
                              param1 = §§pop();
                              addr33:
                              while(true)
                              {
                              }
                           }
                        }
                        continue loop0;
                        addr24:
                        if(!(_loc6_ || param1))
                        {
                           continue;
                        }
                        if(false)
                        {
                           §§goto(addr33);
                        }
                        addr79:
                        §§push(-this.§+! §[param1].x);
                        if(!(_loc5_ && _loc2_))
                        {
                           addr90:
                           §§push(§§pop() + this.§+Y§);
                           if(!(_loc5_ && this))
                           {
                              addr100:
                              §§push(Number(§§pop()));
                           }
                           var _loc2_:* = §§pop();
                           §§push(this.§!n§.x - _loc2_);
                           if(_loc6_ || param1)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           var _loc4_:*;
                           §§push(_loc4_ = Number(Math.abs(_loc3_)));
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(400);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() / §§pop());
                                 if(!_loc5_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§push(§§pop());
                                       if(_loc6_ || _loc2_)
                                       {
                                          _loc4_ = §§pop();
                                          addr162:
                                          §§push(§,2§);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc6_ || this)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!(_loc5_ && param1))
                                                {
                                                   addr182:
                                                   §§push(_loc4_ = §§pop());
                                                   if(!_loc5_)
                                                   {
                                                      addr185:
                                                      if(§§pop() > 1)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            addr191:
                                                            _loc4_ = Number(1);
                                                            addr269:
                                                            addr267:
                                                            if(this.§']§ != null)
                                                            {
                                                               addr273:
                                                               this.§']§.stop();
                                                               addr271:
                                                            }
                                                            this.§']§ = §";§.§[8§.§6!$§(this.§!n§,{"x":_loc2_},null,_loc4_,§";§.§&w§);
                                                            addr221:
                                                            §§push(this.§']§);
                                                            if(!_loc5_)
                                                            {
                                                               §§pop().onComplete = this.§`'§;
                                                               addr226:
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     §§push(this.§']§);
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§pop().play();
                                                                           if(_loc5_ && this)
                                                                           {
                                                                              §§goto(addr226);
                                                                           }
                                                                           return;
                                                                           addr217:
                                                                        }
                                                                        §§goto(addr273);
                                                                     }
                                                                     §§goto(addr221);
                                                                  }
                                                                  §§goto(addr271);
                                                               }
                                                               §§goto(addr273);
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                   §§goto(addr191);
                                                }
                                             }
                                             §§goto(addr185);
                                          }
                                       }
                                       §§goto(addr182);
                                    }
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr100);
                     }
                  }
                  loop2:
                  while(true)
                  {
                     this.§7a§ = param1;
                     if(_loc6_)
                     {
                        §§goto(addr24);
                     }
                     else
                     {
                        loop4:
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              continue loop2;
                           }
                           addr62:
                           while(true)
                           {
                              §§push(this.§+! §);
                              if(!_loc6_)
                              {
                                 break loop4;
                              }
                              §§push(§§pop().length - 1);
                              if(_loc6_)
                              {
                                 §§push(int(§§pop()));
                              }
                              else
                              {
                                 §§goto(addr90);
                              }
                           }
                        }
                        §§goto(addr79);
                        addr52:
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr79);
               }
               §§goto(addr42);
            }
            §§goto(addr62);
         }
      }
      
      private function §`'§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop() >= this.§[W§.length)
               {
                  if(_loc2_)
                  {
                     if(_loc2_)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           this.§]n§ = false;
                           addr55:
                           if(_loc2_ || this)
                           {
                              break;
                           }
                           continue;
                        }
                        addr109:
                     }
                     else
                     {
                        addr94:
                     }
                     addr63:
                     _loc1_++;
                     continue;
                  }
                  §§goto(addr55);
               }
               else
               {
                  addr98:
                  if(_loc1_ == this.§7a§)
                  {
                     if(!_loc3_)
                     {
                        §§push(this.§[W§);
                     }
                     §§goto(addr109);
                  }
                  else
                  {
                     §§push(this.§[W§);
                     if(!_loc3_)
                     {
                        §§push(_loc1_);
                        if(!(_loc3_ && _loc1_))
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr94);
                        }
                        else
                        {
                           addr106:
                           §§pop()[§§pop()].gotoAndStop("Selected");
                           §§goto(addr109);
                        }
                     }
                     else
                     {
                        addr105:
                        §§push(_loc1_);
                     }
                     §§goto(addr106);
                  }
               }
               §§goto(addr109);
            }
            §§goto(addr98);
         }
      }
   }
}
