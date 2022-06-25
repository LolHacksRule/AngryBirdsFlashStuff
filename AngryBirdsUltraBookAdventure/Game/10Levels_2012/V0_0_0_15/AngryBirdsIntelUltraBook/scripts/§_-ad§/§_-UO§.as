package §_-ad§
{
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-0Ar§.§_-0AO§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-05d§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-Ev§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-gt§;
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-0C5§;
   import §_-MN§.§_-rD§;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §_-UO§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "LevelSelectionState";
      
      protected static const §_-045§:Number = 0.5;
      
      public static var §_-yr§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §_-UO§))
         {
            §_-pk§ = "LevelSelectionState";
         }
         while(true)
         {
            §_-045§ = 0.5;
            while(!(_loc2_ && §_-UO§))
            {
               §_-yr§ = "";
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      protected var §_-RV§:Boolean = false;
      
      protected var §_-gT§:§_-gt§;
      
      protected var §_-g§:§_-gt§;
      
      protected var §_-Ii§:MovieClip;
      
      protected var §_-k2§:Array;
      
      protected var §_-0C§:Array;
      
      protected var §_-oC§:int = 0;
      
      protected var §_-00N§:int = 0;
      
      protected var §_-TW§:int = 0;
      
      protected var §_-0Ew§:Boolean = false;
      
      protected var §_-yx§:§_-dd§ = null;
      
      protected var §_-Ey§:Dictionary;
      
      protected var §_-se§:Array;
      
      protected var §_-t7§:Array;
      
      protected var §_-ny§:§_-0AO§;
      
      protected var §_-WL§:Number = 0;
      
      public function §_-UO§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
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
         do
         {
            this.initView();
         }
         while(!(_loc2_ || _loc1_));
         
         while(true)
         {
            §§push(this.§_-g§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  if(!_loc1_)
                  {
                     this.§_-0C§ = [];
                  }
                  while(!(_loc1_ && _loc1_))
                  {
                     this.§_-k2§ = [];
                     if(_loc2_)
                     {
                        return;
                     }
                  }
                  continue;
               }
               §§push(this.§_-g§);
            }
            §§pop().mClip.removeChildAt(0);
         }
      }
      
      protected function initView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-s0§ = new §_-5q§(this);
            while(true)
            {
               §_-s0§.init(§_-vB§.§_-ky§.Views.View_LevelSelection[0]);
               addr43:
               if(!(_loc1_ || this))
               {
                  continue;
               }
               return;
               addr50:
            }
         }
         while(true)
         {
            this.§_-g§ = §_-s0§.getItemByName("Container_LevelRepeaters") as §_-gt§;
            while(!(_loc2_ && _loc1_))
            {
               this.§_-gT§ = §_-s0§.getItemByName("Container_LevelSelection") as §_-gt§;
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr43);
            }
         }
         §§goto(addr50);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§ in§.§_-Dc§);
               loop1:
               while(true)
               {
                  §§pop().clearLevel();
                  addr200:
                  while(!_loc1_)
                  {
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         loop5:
         while(true)
         {
            if(this.§_-0C§.length != 1)
            {
               (§_-s0§.getItemByName("Button_Prev") as §_-Mu§).setVisibility(true);
               loop6:
               while(!_loc1_)
               {
                  (§_-s0§.getItemByName("Button_Next") as §_-Mu§).setVisibility(true);
                  while(true)
                  {
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).setVisibility(true);
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    this.§_-WL§ = this.§_-g§.x;
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(!§_-s0§.stage)
                                          {
                                             return;
                                          }
                                          addr25:
                                          if(_loc2_ || _loc2_)
                                          {
                                             if(_loc1_ && this)
                                             {
                                                break;
                                             }
                                             continue loop5;
                                          }
                                          continue;
                                       }
                                    }
                                    addr144:
                                    while(true)
                                    {
                                       continue loop9;
                                    }
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    (§_-s0§.getItemByName("Button_Prev") as §_-Mu§).setVisibility(false);
                                 }
                                 addr162:
                              }
                              while(true)
                              {
                                 (§_-s0§.getItemByName("Button_Next") as §_-Mu§).setVisibility(false);
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr200);
                        }
                     }
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).setVisibility(false);
                           §§goto(addr144);
                        }
                        else
                        {
                           §§goto(addr187);
                        }
                     }
                     if(_loc1_ && this)
                     {
                        continue;
                     }
                     if(_loc1_)
                     {
                        continue loop6;
                     }
                     §§goto(addr25);
                  }
               }
               §§goto(addr195);
            }
            §§goto(addr162);
         }
      }
      
      protected function §_-0BG§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§_-0C§.length > 1)
            {
               loop0:
               while(param1.keyCode != Keyboard.LEFT)
               {
                  if(param1.keyCode == Keyboard.RIGHT)
                  {
                     if(_loc2_ || this)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              continue loop0;
                           }
                           continue;
                        }
                        this.§_-DB§();
                     }
                     if(!_loc2_)
                     {
                        addr80:
                        if(!_loc2_)
                        {
                           §§goto(addr88);
                        }
                     }
                  }
                  return;
               }
               this.§_-rT§();
               §§goto(addr80);
            }
            addr88:
            return;
         }
         §§goto(addr89);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() == §_-nG§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     this.§_-6o§();
                     while(true)
                     {
                        this.§_-PD§();
                        §§goto(addr90);
                     }
                  }
               }
            }
            §§goto(addr101);
         }
         addr90:
         while(mNextState.length > 0)
         {
            if(_loc4_)
            {
               if(!_loc3_)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     return §_-nG§.STATE_STATUS_COMPLETED;
                  }
                  addr101:
                  return _loc2_;
               }
               continue;
            }
            if(!(_loc3_ && _loc2_))
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
            continue loop1;
         }
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      protected function §_-6o§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_)
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
                           loop1:
                           for(; !(_loc3_ && this); if(!(_loc4_ || _loc1_))
                           {
                              continue;
                           },if(!_loc3_)
                           {
                              this.§_-00N§ = this.§_-TW§ - 1;
                              §§goto(addr155);
                           },§§goto(addr498))
                           {
                              if(_loc4_)
                              {
                                 §§push(this.§_-TW§);
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.§_-oC§);
                                    loop3:
                                    while(true)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          loop4:
                                          while(!(_loc3_ && _loc1_))
                                          {
                                             if(_loc4_ || _loc1_)
                                             {
                                                §§push(this.§_-oC§);
                                                loop45:
                                                while(true)
                                                {
                                                   §§push(this.§_-TW§);
                                                   loop46:
                                                   while(§§pop() <= §§pop())
                                                   {
                                                      §§push(this.§_-oC§);
                                                      if(_loc3_)
                                                      {
                                                         continue loop45;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(this.§_-TW§);
                                                      if(!_loc4_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc4_ || _loc2_))
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         addr155:
                                                         loop47:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  this.§_-ny§.§_-A2§(this.§_-se§[this.§_-00N§].red,this.§_-se§[this.§_-00N§].green,this.§_-se§[this.§_-00N§].blue);
                                                                  addr92:
                                                                  addr94:
                                                                  while(_loc3_)
                                                                  {
                                                                     while(_loc4_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     addr446:
                                                                     loop21:
                                                                     do
                                                                     {
                                                                        §§push(this.§_-g§);
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           §§push(-§§pop().x);
                                                                           loop22:
                                                                           while(_loc4_)
                                                                           {
                                                                              §§push(this.§_-0C§);
                                                                              loop23:
                                                                              for(; !_loc3_; §§push(this.§_-0C§),if(_loc3_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              },if(_loc4_)
                                                                              {
                                                                                 §§goto(addr376);
                                                                              },§§goto(addr563))
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_ || _loc1_)
                                                                                    {
                                                                                       §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                addr391:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr393:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      loop17:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc2_ = §§pop();
                                                                                                         addr395:
                                                                                                         loop18:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_);
                                                                                                            addr306:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc4_ || this))
                                                                                                               {
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§push(this.§_-k2§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop() >= §§pop().length)
                                                                                                                     {
                                                                                                                        if(_loc4_ || _loc1_)
                                                                                                                        {
                                                                                                                           this.§_-TW§ = _loc1_;
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                        break loop1;
                                                                                                                     }
                                                                                                                     addr338:
                                                                                                                     §§push(this.§_-k2§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        addr339:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc3_ && this))
                                                                                                                           {
                                                                                                                              §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                              addr349:
                                                                                                                              if(_loc4_ || _loc2_)
                                                                                                                              {
                                                                                                                                 _loc2_++;
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              loop35:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc3_ && this))
                                                                                                                                 {
                                                                                                                                    §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    loop36:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                       loop37:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc2_++;
                                                                                                                                          addr501:
                                                                                                                                          if(!(_loc3_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr508:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc2_);
                                                                                                                                                addr477:
                                                                                                                                                addr553:
                                                                                                                                                while(!(_loc3_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§_-k2§);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() >= §§pop().length)
                                                                                                                                                      {
                                                                                                                                                         addr488:
                                                                                                                                                         if(_loc3_ && _loc2_)
                                                                                                                                                         {
                                                                                                                                                            continue loop37;
                                                                                                                                                         }
                                                                                                                                                         this.§_-TW§ = _loc1_;
                                                                                                                                                         §§push(this.§_-k2§);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            continue loop35;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§_-k2§);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            continue loop36;
                                                                                                                                                         }
                                                                                                                                                         addr514:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc2_ = §§pop();
                                                                                                                                                }
                                                                                                                                                §§goto(addr508);
                                                                                                                                             }
                                                                                                                                             addr475:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr475);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).x = this.§_-k2§[_loc1_].x;
                                                                                                                              addr459:
                                                                                                                              this.updatePageNumber(_loc1_);
                                                                                                                              §§goto(addr446);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr317:
                                                                                                               }
                                                                                                               §§goto(addr477);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr393:
                                                                                                }
                                                                                                _loc1_++;
                                                                                                continue loop0;
                                                                                             }
                                                                                             while(!_loc3_)
                                                                                             {
                                                                                                if(_loc3_ && this)
                                                                                                {
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      addr564:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop26;
                                                                                                      }
                                                                                                   }
                                                                                                   break;
                                                                                                   addr441:
                                                                                                }
                                                                                                addr567:
                                                                                                addr550:
                                                                                                addr567:
                                                                                                §§pop();
                                                                                                §§push(this.§_-WL§);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   continue loop22;
                                                                                                }
                                                                                                continue loop23;
                                                                                             }
                                                                                             continue loop21;
                                                                                             addr431:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr570:
                                                                                                   §§push(this.§_-WL§);
                                                                                                   if(!(_loc3_ && this))
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§push(-§§pop());
                                                                                                         break loop22;
                                                                                                      }
                                                                                                      addr561:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§_-0C§);
                                                                                                         addr563:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr564);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   break loop22;
                                                                                                }
                                                                                                addr569:
                                                                                             }
                                                                                             §§goto(addr550);
                                                                                             §§goto(addr567);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr431);
                                                                                    }
                                                                                    §§push(_loc1_);
                                                                                    addr376:
                                                                                    break;
                                                                                    if(!(_loc4_ || _loc1_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§goto(addr391);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr569);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr431);
                                                                                    }
                                                                                    §§goto(addr567);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr564);
                                                                                    }
                                                                                    §§goto(addr567);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr545);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr544);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr559:
                                                                        }
                                                                        §§goto(addr561);
                                                                     }
                                                                     while(!§§pop());
                                                                     
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr553);
                                                                     }
                                                                  }
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     this.§_-WL§ = this.§_-g§.x;
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           if(!(_loc4_ || _loc2_))
                                                                           {
                                                                              continue loop47;
                                                                           }
                                                                           if(!(_loc4_ || _loc2_))
                                                                           {
                                                                              break loop46;
                                                                           }
                                                                           if(!(_loc4_ || _loc1_))
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           if(!_loc3_)
                                                                           {
                                                                              return;
                                                                           }
                                                                           §§goto(addr349);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_ && this)
                                                                              {
                                                                                 break loop5;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       §§goto(addr570);
                                                                                    }
                                                                                    §§goto(addr501);
                                                                                 }
                                                                                 §§goto(addr395);
                                                                              }
                                                                              if(!(_loc3_ && _loc1_))
                                                                              {
                                                                                 this.updatePageNumber(_loc1_);
                                                                                 break loop4;
                                                                              }
                                                                           }
                                                                           addr102:
                                                                        }
                                                                        §§goto(addr393);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr92);
                                                                     }
                                                                     §§goto(addr94);
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                            §§goto(addr488);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this.§_-00N§ = this.§_-TW§;
                                                      }
                                                      §§goto(addr102);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         this.§_-00N§ = this.§_-TW§ + 1;
                                                         §§goto(addr446);
                                                      }
                                                      §§goto(addr459);
                                                   }
                                                }
                                                addr212:
                                             }
                                             §§goto(addr441);
                                          }
                                          addr233:
                                          if(_loc4_ || this)
                                          {
                                             if(_loc3_ && _loc2_)
                                             {
                                                §§goto(addr552);
                                             }
                                             §§goto(addr391);
                                          }
                                          while(true)
                                          {
                                             (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).x = this.§_-k2§[_loc1_].x;
                                             §§goto(addr260);
                                             §§goto(addr233);
                                          }
                                          §§goto(addr393);
                                          addr303:
                                       }
                                       §§goto(addr94);
                                    }
                                 }
                              }
                              §§goto(addr332);
                           }
                           while(true)
                           {
                              §§push(this.§_-k2§);
                              if(_loc4_)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(_loc1_);
                                       if(!_loc3_)
                                       {
                                          §§pop()[§§pop()].gotoAndStop("Selected");
                                          §§goto(addr303);
                                       }
                                       §§goto(addr339);
                                    }
                                    §§goto(addr514);
                                 }
                                 §§goto(addr463);
                              }
                              §§goto(addr338);
                           }
                           §§goto(addr391);
                        }
                        else
                        {
                           §§push(this.§_-g§);
                        }
                        §§goto(addr559);
                     }
                     §§goto(addr486);
                  }
                  §§goto(addr317);
               }
               §§goto(addr306);
            }
            §§goto(addr212);
         }
      }
      
      protected function §_-PD§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() >= this.§_-0C§.length)
               {
                  if(_loc3_)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        if(!_loc4_)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              if(!_loc4_)
                              {
                                 if(_loc3_ || _loc1_)
                                 {
                                    break;
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(1000);
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop22:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr194:
                                             while(true)
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   if(Math.abs(this.§_-0C§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§_-0C§);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(_loc1_);
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr201:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§_-0C§);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc4_ && _loc2_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              if(§§pop()[§§pop()].mClip.alpha >= 1)
                                                                              {
                                                                                 addr112:
                                                                                 §§push(this.§_-0C§);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr120:
                                                                                    §§push(_loc1_);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       (§§pop()[§§pop()] as §_-rD§).setEnabled(true);
                                                                                       while(true)
                                                                                       {
                                                                                          addr59:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc1_++;
                                                                                             addr61:
                                                                                             while(!_loc3_)
                                                                                             {
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                       }
                                                                                       addr79:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       (§§pop()[§§pop()] as §_-rD§).setEnabled(false);
                                                                                       addr125:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          §§goto(addr59);
                                                                                       }
                                                                                    }
                                                                                    addr120:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc3_ || _loc2_))
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    §§goto(addr120);
                                                                                    §§push(_loc1_);
                                                                                 }
                                                                                 continue loop14;
                                                                                 addr112:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr112);
                                                                              }
                                                                           }
                                                                           §§goto(addr120);
                                                                        }
                                                                        §§goto(addr112);
                                                                        continue loop14;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        §§goto(addr201);
                                                                     }
                                                                     addr201:
                                                                     addr200:
                                                                     addr80:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr201);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop22;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           if(§§pop() > 1000)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        addr214:
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           addr215:
                                                                           while(true)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr200);
                                                                  }
                                                                  continue loop22;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr145:
                                                   }
                                                   §§goto(addr80);
                                                }
                                             }
                                          }
                                       }
                                       addr192:
                                    }
                                    §§goto(addr215);
                                 }
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr61);
               }
               else
               {
                  §§push(Number(this.§_-g§.x + this.§_-0C§[_loc1_].x));
               }
               §§goto(addr214);
            }
            §§goto(addr192);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§_-s0§.stage)
            {
               while(true)
               {
                  §_-s0§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§_-0BG§);
                  addr97:
                  while(true)
                  {
                  }
               }
               addr90:
            }
            while(true)
            {
               super.deActivate();
               loop3:
               while(true)
               {
                  this.§_-06O§();
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        break loop3;
                     }
                     (§_-s0§.getItemByName("Button_Back") as §_-Mu§).setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     loop5:
                     while(!_loc1_)
                     {
                        continue loop3;
                        while(true)
                        {
                           LevelManager.§_-4w§ = null;
                           if(_loc2_ || _loc2_)
                           {
                              break;
                           }
                           continue loop5;
                        }
                        return;
                     }
                  }
               }
               §§goto(addr90);
               §§goto(addr97);
            }
         }
         §§goto(addr76);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§_-yx§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§_-yx§);
                     addr85:
                     while(true)
                     {
                        §§pop().stop();
                        addr86:
                        while(true)
                        {
                           this.§_-yx§ = null;
                           addr72:
                           while(true)
                           {
                           }
                        }
                     }
                     addr60:
                     if(!(_loc1_ || this))
                     {
                        continue;
                     }
                     return;
                     addr67:
                  }
               }
               while(true)
               {
                  super.cleanup();
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr60);
                  }
                  §§goto(addr86);
               }
               §§goto(addr67);
            }
            §§goto(addr85);
         }
         §§goto(addr86);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param2.length > 0);
            loop0:
            while(true)
            {
               §§push(§§pop());
               addr200:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr202:
                        while(true)
                        {
                           §§push(param3 is §_-Ev§);
                           if(_loc6_ && param3)
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr201:
                  }
                  addr160:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop12:
                        while(true)
                        {
                           §§push((param3 as §_-Ev§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                           if(!(_loc6_ && param1))
                           {
                              continue loop0;
                           }
                           addr193:
                           loop5:
                           while(true)
                           {
                              §§pop();
                              loop6:
                              while(true)
                              {
                                 §§push((param3 as §_-Ev§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                                 if(_loc5_ || param2)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop5;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(this.§_-0Ew§);
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   break loop6;
                                                }
                                                if(!§§pop())
                                                {
                                                   while(_loc5_)
                                                   {
                                                      while(true)
                                                      {
                                                         LevelManager.§_-s8§(LevelManager.§_-Hc§(param2.toLowerCase()));
                                                      }
                                                      if(!(_loc5_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      var _loc4_:* = param2;
                                                      if(!_loc6_)
                                                      {
                                                         §§push("BACK");
                                                         if(!(_loc6_ && param3))
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc5_ || param2)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     §§push(0);
                                                                     if(!(_loc5_ || this))
                                                                     {
                                                                        addr305:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr302:
                                                                     §§push(3);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr305);
                                                                     }
                                                                  }
                                                                  §§goto(addr310);
                                                               }
                                                               §§push("NEXT");
                                                               if(_loc5_)
                                                               {
                                                                  addr246:
                                                                  §§push(_loc4_);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr249);
                                                                  }
                                                                  §§goto(addr287);
                                                               }
                                                               §§goto(addr300);
                                                               §§goto(addr302);
                                                            }
                                                            addr249:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc5_ || param3)
                                                               {
                                                                  §§push(1);
                                                                  if(_loc6_)
                                                                  {
                                                                  }
                                                                  §§goto(addr310);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr290);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push("PREV");
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     addr287:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr290:
                                                                           §§push(2);
                                                                           if(_loc5_ || param2)
                                                                           {
                                                                           }
                                                                           §§goto(addr310);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr302);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr300:
                                                                        §§push("FULLSCREEN_BUTTON");
                                                                        §§push(_loc4_);
                                                                     }
                                                                     §§goto(addr302);
                                                                  }
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     §§goto(addr302);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(4);
                                                                  }
                                                               }
                                                               §§goto(addr300);
                                                            }
                                                            addr310:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  §_-pX§.playSound("Menu_Back");
                                                                  mNextState = §_-Rp§.§_-pk§;
                                                                  break;
                                                                  addr78:
                                                                  addr71:
                                                               case 1:
                                                                  this.§_-DB§();
                                                                  break;
                                                                  addr65:
                                                               case 2:
                                                                  this.§_-rT§();
                                                                  addr40:
                                                                  break;
                                                                  addr59:
                                                               case 3:
                                                                  §_-pX§.playSound("Menu_Confirm");
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     AngryBirdsFP11.§_-07§.§_-0De§();
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!(_loc6_ && param2))
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr40);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr78);
                                                                                 }
                                                                              }
                                                                              §§goto(addr71);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr65);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr59);
                                                                        }
                                                                        §§goto(addr40);
                                                                     }
                                                                     break;
                                                                  }
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr246);
                                                      }
                                                      §§goto(addr302);
                                                      addr72:
                                                   }
                                                   §§goto(addr202);
                                                }
                                                §§goto(addr72);
                                             }
                                             addr125:
                                          }
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                continue;
                                             }
                                             continue loop6;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr72);
                                    }
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr201);
                           }
                        }
                        addr162:
                     }
                     §§goto(addr72);
                  }
               }
            }
         }
         §§goto(addr130);
      }
      
      protected function §_-DB§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §_-pX§.playSound("Menu_Confirm");
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr44);
            }
            §§goto(addr91);
         }
         addr44:
         if(!this.§_-0Ew§)
         {
            if(!(_loc3_ && _loc3_))
            {
               var _loc1_:*;
               §§push((_loc1_ = this).§_-oC§);
               if(_loc4_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc2_:* = §§pop();
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.§_-oC§ = _loc2_;
               }
               if(_loc4_ || _loc2_)
               {
                  addr91:
                  this.§_-Mx§(this.§_-oC§);
               }
            }
            §§goto(addr91);
         }
      }
      
      protected function §_-rT§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §_-pX§.playSound("Menu_Confirm");
            if(!(_loc4_ && _loc2_))
            {
               §§goto(addr28);
            }
            §§goto(addr48);
         }
         addr28:
         if(!this.§_-0Ew§)
         {
            if(!(_loc4_ && _loc2_))
            {
               addr48:
               var _loc1_:*;
               §§push((_loc1_ = this).§_-oC§);
               if(_loc3_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc2_:* = §§pop();
               if(_loc3_ || _loc2_)
               {
                  _loc1_.§_-oC§ = _loc2_;
               }
               if(!(_loc4_ && _loc2_))
               {
                  this.§_-Mx§(this.§_-oC§);
               }
            }
         }
      }
      
      public function initLevelsRepeater() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:* = Number(0);
         if(_loc9_ || _loc2_)
         {
            this.§_-se§ = [];
            while(true)
            {
               this.§_-t7§ = [];
               loop1:
               while(_loc9_ || this)
               {
                  this.§_-oC§ = LevelManager.§_-h8§(LevelManager.§_-07s§).§_-h-§;
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        this.§_-00N§ = this.§_-oC§;
                        while(!_loc10_)
                        {
                           this.§_-TW§ = this.§_-oC§;
                           if(_loc9_ || _loc3_)
                           {
                              if(!_loc10_)
                              {
                                 if(true)
                                 {
                                    break loop3;
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                     var _loc2_:§_-0C5§ = LevelManager.§_-h8§(LevelManager.§_-07s§);
                     var _loc3_:* = Number(0);
                     loop5:
                     while(_loc3_ < _loc2_.pageIndexes.length)
                     {
                        _loc4_ = _loc2_.§_-27§(_loc2_.pageIndexes[_loc3_]);
                        if(_loc9_)
                        {
                           §§push(this.§_-se§);
                           while(true)
                           {
                              §§pop().push(_loc2_.§_-3k§(_loc3_));
                              while(true)
                              {
                                 §§push(this.§_-t7§);
                                 if(_loc10_)
                                 {
                                    break;
                                 }
                                 §§pop().push(_loc2_.§_-vx§(_loc3_));
                                 loop8:
                                 while(_loc9_)
                                 {
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(this.addLevelPage(_loc4_,_loc3_,_loc1_,_loc2_));
                                          loop11:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(!_loc10_)
                                                      {
                                                         addr125:
                                                         if(!_loc9_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         §§push(Number(§§pop()));
                                                      }
                                                      if(_loc10_ && _loc3_)
                                                      {
                                                         break;
                                                      }
                                                      _loc3_ = §§pop();
                                                      if(!(_loc10_ && _loc2_))
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            if(false)
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr125);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr168);
                     }
                     if(_loc9_)
                     {
                        this.§_-ny§ = new §_-0AO§(this.§_-se§[this.§_-oC§].red,this.§_-se§[this.§_-oC§].green,this.§_-se§[this.§_-oC§].blue,1);
                        if(_loc9_)
                        {
                           §_-s0§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§_-ny§);
                           if(!_loc10_)
                           {
                              if(_loc2_.§_-Rx§)
                              {
                                 if(!(_loc10_ && _loc1_))
                                 {
                                    _loc6_ = new (_loc5_ = §_-Fc§.§_-YE§(_loc2_.§_-Rx§))();
                                    if(_loc9_ || this)
                                    {
                                       §_-s0§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                                       if(!_loc10_)
                                       {
                                          addr267:
                                          if(_loc2_.§_-dx§)
                                          {
                                             if(!(_loc10_ && _loc1_))
                                             {
                                                _loc8_ = new (_loc7_ = §_-Fc§.§_-YE§(_loc2_.§_-dx§))();
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   §_-s0§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                                                   if(_loc9_)
                                                   {
                                                      addr308:
                                                      this.§_-Bi§();
                                                      if(_loc9_ || this)
                                                      {
                                                         if(§_-yr§ == StateCutScene.§_-pk§)
                                                         {
                                                            if(_loc9_ || this)
                                                            {
                                                               §_-yr§ = "";
                                                            }
                                                            while(true)
                                                            {
                                                               this.§_-Mx§(this.§_-TW§);
                                                               §§goto(addr353);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            this.§_-Mx§(this.§_-oC§,true);
                                                            if(_loc10_ && _loc2_)
                                                            {
                                                               addr353:
                                                            }
                                                            §§goto(addr318);
                                                         }
                                                         §§goto(addr353);
                                                         addr317:
                                                      }
                                                      addr318:
                                                      while(_loc10_ && _loc2_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      return;
                                                      addr301:
                                                   }
                                                   §§goto(addr317);
                                                }
                                                §§goto(addr301);
                                             }
                                          }
                                          else
                                          {
                                             §_-s0§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                                          }
                                          addr260:
                                       }
                                       §§goto(addr308);
                                    }
                                    §§goto(addr260);
                                 }
                              }
                              else
                              {
                                 §_-s0§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                              }
                           }
                        }
                     }
                     §§goto(addr267);
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§_-0C5§) : Number
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:* = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §_-Fc§.§_-YE§(this.§_-t7§[param2]);
         var _loc7_:* = Number(0);
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(!_loc15_)
            {
               §§push(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_));
               if(_loc14_ || this)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(_loc15_ && this)
               {
                  break;
               }
            }
            _loc12_ = this.makeButtonForLevel(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(!_loc15_)
            {
               §§push(_loc11_);
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(AngryBirdsFP11.§_-LI§);
                              if(_loc14_)
                              {
                                 if(_loc15_)
                                 {
                                    continue loop3;
                                 }
                                 if(!_loc14_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                              }
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       _loc13_.@MouseUp = _loc10_;
                                       addr196:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr193:
                                 }
                                 while(true)
                                 {
                                    _loc13_.@scaleOnMouseOver = "True";
                                    loop9:
                                    while(true)
                                    {
                                       _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                       continue loop5;
                                       loop16:
                                       while(true)
                                       {
                                          if(!(_loc14_ || param3))
                                          {
                                             continue loop9;
                                          }
                                          if(!_loc15_)
                                          {
                                             if(_loc14_)
                                             {
                                                if(!(_loc14_ || param2))
                                                {
                                                   continue loop4;
                                                }
                                                loop12:
                                                while(true)
                                                {
                                                   _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                                   while(true)
                                                   {
                                                      if(_loc15_)
                                                      {
                                                         while(!_loc15_)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc12_.MovieClip_Stars.mouseEnabled = false;
                                                               continue loop16;
                                                            }
                                                         }
                                                         continue loop5;
                                                         addr140:
                                                      }
                                                      §§push(_loc7_);
                                                      if(_loc14_ || this)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(_loc14_)
                                                         {
                                                            addr111:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         _loc7_ = §§pop();
                                                         if(_loc14_)
                                                         {
                                                            if(!_loc15_)
                                                            {
                                                               if(false)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               continue loop0;
                                                            }
                                                            continue loop16;
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr111);
                                                   }
                                                   continue loop16;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr193);
                                             }
                                          }
                                          §§goto(addr196);
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr191);
                  }
               }
            }
            §§goto(addr142);
         }
         _loc8_ = <Repeater/>;
         if(_loc14_ || param3)
         {
            §§push(param1);
            loop17:
            while(true)
            {
               §§push(§§pop().length == 15);
               if(_loc14_ || param1)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc14_ || param3)
                           {
                              _loc8_.@name = "Repeater_LevelSelection15";
                           }
                           while(true)
                           {
                              addr276:
                              loop20:
                              while(true)
                              {
                                 _loc8_.@button = this.§_-t7§[param2];
                                 loop21:
                                 while(true)
                                 {
                                    _loc8_.@enabled = "True";
                                    while(!(_loc15_ && param1))
                                    {
                                       loop23:
                                       while(true)
                                       {
                                          _loc8_.@buttonSelectionType = "NO_SELECTION";
                                          while(_loc14_ || param1)
                                          {
                                             if(_loc14_ || param2)
                                             {
                                                _loc8_.@fromLibrary = "true";
                                                if(_loc14_ || param3)
                                                {
                                                   continue loop23;
                                                }
                                                continue;
                                             }
                                             continue loop17;
                                          }
                                          continue loop21;
                                       }
                                    }
                                 }
                                 addr292:
                                 while(true)
                                 {
                                    continue loop20;
                                 }
                              }
                           }
                           addr314:
                        }
                        else
                        {
                           _loc8_.@name = "Repeater_LevelSelection";
                        }
                        while(true)
                        {
                           if(_loc14_)
                           {
                              §§goto(addr292);
                           }
                           else
                           {
                              §§goto(addr314);
                           }
                        }
                     }
                     addr302:
                  }
               }
               addr328:
               while(true)
               {
                  §§pop();
                  continue loop17;
               }
            }
         }
         §§goto(addr292);
      }
      
      protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(!_loc9_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  _loc6_.gotoAndStop("Locked");
                  loop1:
                  while(true)
                  {
                     if(!(_loc9_ && param3))
                     {
                        loop2:
                        while(true)
                        {
                           _loc6_.isOpen = param2;
                           addr118:
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 if(_loc9_ && param1)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           loop10:
                           while(true)
                           {
                              if(!_loc9_)
                              {
                                 if(!_loc8_)
                                 {
                                    while(true)
                                    {
                                       _loc6_.gotoAndStop("Open");
                                       addr199:
                                       loop12:
                                       while(true)
                                       {
                                          _loc6_.MovieClip_MEInUse.visible = false;
                                          addr193:
                                          loop5:
                                          while(true)
                                          {
                                             §§push(AngryBirdsFP11.sUserProgress);
                                             addr179:
                                             while(true)
                                             {
                                                §§push(param1);
                                                addr180:
                                                while(true)
                                                {
                                                   §§push(§§pop().getEagleScoreForLevel(§§pop()));
                                                   addr181:
                                                   while(true)
                                                   {
                                                      if(§§pop() == 100)
                                                      {
                                                         break loop5;
                                                      }
                                                      addr169:
                                                      _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                                                      while(true)
                                                      {
                                                         _loc6_.MovieClip_Feather.mouseEnabled = false;
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop12;
                                          }
                                          addr183:
                                          addr187:
                                          _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                                          _loc6_.MovieClip_Feather.mouseEnabled = false;
                                          continue loop2;
                                       }
                                    }
                                    addr196:
                                 }
                                 continue loop2;
                              }
                              §§goto(addr183);
                           }
                        }
                     }
                     §§goto(addr199);
                  }
               }
               §§goto(addr196);
            }
         }
         §§goto(addr199);
      }
      
      protected function §_-Bi§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(_loc6_ || _loc2_)
         {
            if(this.§_-0C§.length == 1)
            {
               if(!_loc5_)
               {
                  §§goto(addr37);
               }
            }
            var _loc3_:* = Number(0);
            if(_loc6_)
            {
               this.§_-Ey§ = new Dictionary();
            }
            var _loc4_:int = 0;
            while(_loc4_ < this.§_-0C§.length)
            {
               _loc1_ = §_-Fc§.§_-YE§("Button_Dot");
               _loc2_ = new _loc1_();
               if(_loc6_)
               {
                  _loc2_.x = AngryBirdsFP11.§_-Uj§ / 2 + _loc3_ - this.§_-0C§.length * _loc2_.width / 2;
                  loop1:
                  while(true)
                  {
                     _loc2_.y = (§_-s0§.getItemByName("Button_Next") as §_-Mu§).y - _loc2_.height / 2;
                     loop2:
                     while(true)
                     {
                        if(_loc4_ != this.§_-oC§)
                        {
                           _loc2_.gotoAndStop("UnSelected");
                           continue loop1;
                        }
                        loop13:
                        while(true)
                        {
                           _loc2_.gotoAndStop("Selected");
                           loop14:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 continue loop2;
                              }
                              (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).x = _loc2_.x;
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc6_ || this)
                                    {
                                       break;
                                    }
                                    continue loop13;
                                 }
                                 continue loop14;
                                 §§goto(addr231);
                              }
                              addr231:
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).y = _loc2_.y - _loc2_.height;
                  §§goto(addr201);
               }
            }
            if(!_loc5_)
            {
               §§push(this.§_-0C§.length * _loc2_.width);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop() / 2);
                  if(!_loc5_)
                  {
                     addr289:
                     §§push(§§pop() + _loc2_.width * 1.5);
                     if(!(_loc5_ && this))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc3_ = §§pop();
                  if(!_loc5_)
                  {
                     (§_-s0§.getItemByName("Button_Next") as §_-Mu§).x = AngryBirdsFP11.§_-Uj§ / 2;
                     while(true)
                     {
                        (§_-s0§.getItemByName("Button_Prev") as §_-Mu§).x = AngryBirdsFP11.§_-Uj§ / 2;
                        loop19:
                        while(_loc6_ || _loc2_)
                        {
                           (§_-s0§.getItemByName("Button_Next") as §_-Mu§).x = (§_-s0§.getItemByName("Button_Next") as §_-Mu§).x + (_loc3_ + 10);
                           while(true)
                           {
                              (§_-s0§.getItemByName("Button_Prev") as §_-Mu§).x = (§_-s0§.getItemByName("Button_Prev") as §_-Mu§).x - (_loc3_ + 10);
                              if(!(_loc5_ && _loc1_))
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop19;
                              }
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr336);
               }
               §§goto(addr289);
            }
            §§goto(addr354);
         }
         addr37:
      }
      
      protected function §_-06O§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§_-ny§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr33:
                     this.§_-ny§.clean();
                  }
               }
               var _loc1_:int = 0;
               loop0:
               while(true)
               {
                  if(_loc1_ >= this.§_-k2§.length)
                  {
                     loop1:
                     while(_loc3_ || _loc1_)
                     {
                        this.§_-k2§ = [];
                        loop2:
                        while(true)
                        {
                           do
                           {
                              §§push(this.§_-g§);
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(§§pop().mClip.numChildren <= 0)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop1;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       this.§_-0C§ = [];
                                    }
                                    if(_loc3_ || _loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             return;
                                          }
                                          addr155:
                                          this.§_-k2§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-xn§);
                                          break loop1;
                                       }
                                       continue loop2;
                                    }
                                    continue;
                                 }
                                 §§push(this.§_-g§);
                              }
                              §§pop().mClip.removeChildAt(0);
                           }
                           while(_loc3_);
                           
                           addr143:
                           _loc1_++;
                           continue loop0;
                        }
                     }
                     while(true)
                     {
                        §§push(this.§_-gT§);
                        if(!_loc2_)
                        {
                           §§pop().mClip.removeChild(this.§_-k2§[_loc1_]);
                           §§goto(addr143);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr143);
                  }
                  else
                  {
                     §§push(this.§_-gT§);
                  }
                  while(true)
                  {
                     if(§§pop().mClip.contains(this.§_-k2§[_loc1_]))
                     {
                        §§goto(addr155);
                     }
                     §§goto(addr143);
                  }
               }
            }
         }
         §§goto(addr33);
      }
      
      protected function §_-xn§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(!this.§_-0Ew§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this.§_-Mx§(this.§_-Ey§[param1.target]);
               }
            }
         }
      }
      
      protected function §_-04o§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§_-0Ew§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr29:
                  mNextState = §_-UO§.§_-pk§;
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      protected function §_-Mx§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            this.§_-0Ew§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(§§pop() <= this.§_-0C§.length - 1)
                  {
                     §§push(param1);
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        loop3:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    §§push(0);
                                    while(true)
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          param1 = §§pop();
                                          addr158:
                                       }
                                    }
                                    continue loop1;
                                    addr122:
                                 }
                                 addr160:
                                 while(true)
                                 {
                                 }
                              }
                              addr119:
                           }
                           loop9:
                           while(true)
                           {
                              this.§_-oC§ = param1;
                              loop10:
                              for(; !_loc7_; if(_loc7_ && _loc3_)
                              {
                                 continue;
                              },this.§_-00N§ = this.§_-TW§ - 1,§§goto(addr66))
                              {
                                 loop11:
                                 do
                                 {
                                    §§push(this.§_-oC§);
                                    loop12:
                                    while(true)
                                    {
                                       §§push(this.§_-TW§);
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop3;
                                          }
                                          if(§§pop() <= §§pop())
                                          {
                                             §§push(this.§_-oC§);
                                             if(!(_loc7_ && param1))
                                             {
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                if(!_loc7_)
                                                {
                                                   §§push(this.§_-TW§);
                                                   if(!_loc7_)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            §§goto(addr105);
                                                         }
                                                         else
                                                         {
                                                            addr66:
                                                            if(!(_loc7_ && this))
                                                            {
                                                               continue loop0;
                                                            }
                                                            addr145:
                                                            while(true)
                                                            {
                                                               §§push(this.§_-0C§);
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§§pop().length - 1);
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     §§goto(addr158);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr188:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr167:
                                                                  §§push(-§§pop()[param1].x);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§goto(addr188);
                                                                  }
                                                               }
                                                               var _loc3_:* = §§pop();
                                                               var _loc4_:Number = this.§_-0C§[param1].x + this.§_-g§.x;
                                                               var _loc5_:*;
                                                               §§push(_loc5_ = Number(Math.abs(_loc4_)));
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§§pop() / 1024);
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           addr247:
                                                                           if(_loc6_)
                                                                           {
                                                                              addr237:
                                                                              §§push(§_-045§);
                                                                           }
                                                                           _loc5_ = Number(§§pop());
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(this.§_-yx§);
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() != null)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§_-yx§);
                                                                                       addr376:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().stop();
                                                                                          addr377:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr374:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param2);
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          this.§_-yx§ = §_-cx§.§_-3S§.§_-Wf§(this.§_-g§,{"x":_loc3_},null,_loc5_,§_-cx§.§_-037§);
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§push(this.§_-yx§);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr287:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param2);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr292:
                                                                                                         if(_loc7_ && this)
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         if(!(_loc7_ && param1))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         addr365:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§_-g§.x = _loc3_;
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr257:
                                                                                                         §§push(this.§_-yx§);
                                                                                                         if(!(_loc7_ && _loc3_))
                                                                                                         {
                                                                                                            if(!(_loc7_ && _loc3_))
                                                                                                            {
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            §§goto(addr376);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop25;
                                                                                                   }
                                                                                                   addr308:
                                                                                                   this.§_-zQ§();
                                                                                                   if(!(_loc7_ && param2))
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         addr251:
                                                                                                         return;
                                                                                                      }
                                                                                                      §§goto(addr374);
                                                                                                   }
                                                                                                   §§goto(addr377);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().onComplete = this.§_-zQ§;
                                                                                                continue loop21;
                                                                                                §§goto(addr257);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr365);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr286);
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc7_ && param1)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr247);
                                                               }
                                                               §§goto(addr237);
                                                            }
                                                         }
                                                      }
                                                      break loop11;
                                                   }
                                                   continue;
                                                }
                                                continue loop2;
                                             }
                                             continue loop12;
                                          }
                                          if(_loc6_ || this)
                                          {
                                             if(!_loc7_)
                                             {
                                                this.§_-00N§ = this.§_-TW§ + 1;
                                             }
                                             else
                                             {
                                                §§goto(addr119);
                                             }
                                          }
                                          break loop11;
                                          addr105:
                                          §§goto(addr160);
                                       }
                                       §§goto(addr122);
                                    }
                                 }
                                 while(false);
                                 
                                 §§goto(addr167);
                                 §§push(this.§_-0C§);
                              }
                              addr137:
                              while(true)
                              {
                                 continue loop9;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr145);
      }
      
      protected function §_-zQ§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop() >= this.§_-k2§.length)
               {
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        if(_loc3_ || _loc1_)
                        {
                           this.§_-0Ew§ = false;
                           while(!(_loc2_ && _loc2_))
                           {
                              LevelManager.§_-h8§(LevelManager.§_-07s§).§_-h-§ = this.§_-oC§;
                              if(_loc3_)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       break loop0;
                                    }
                                    addr150:
                                    this.§_-k2§[_loc1_].gotoAndStop("Selected");
                                    addr147:
                                 }
                                 (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).x = this.§_-k2§[_loc1_].x;
                                 break;
                              }
                           }
                           this.updatePageNumber(_loc1_);
                           addr81:
                        }
                        addr89:
                        loop1:
                        while(true)
                        {
                           _loc1_++;
                           addr112:
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                        addr89:
                     }
                     while(_loc2_)
                     {
                        §§goto(addr112);
                        §§goto(addr89);
                     }
                     continue;
                  }
                  §§goto(addr81);
               }
               else
               {
                  addr144:
                  if(_loc1_ == this.§_-oC§)
                  {
                     §§goto(addr147);
                  }
                  else
                  {
                     §§push(this.§_-k2§);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(_loc1_);
                        if(!_loc2_)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr112);
                        }
                        else
                        {
                           §§goto(addr150);
                        }
                     }
                     else
                     {
                        §§goto(addr150);
                     }
                     §§goto(addr150);
                  }
               }
               §§goto(addr150);
            }
            §§goto(addr144);
         }
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).§_-ab§.text = LevelManager.§_-h8§(LevelManager.§_-07s§).pageIndexes[param1];
         }
      }
   }
}
