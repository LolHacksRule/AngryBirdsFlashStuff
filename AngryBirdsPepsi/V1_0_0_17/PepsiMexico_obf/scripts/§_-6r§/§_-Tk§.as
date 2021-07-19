package §_-6r§
{
   import §_-0S§.§_-z1§;
   import §_-9§.§_-JR§;
   import §_-F1§.§_-k4§;
   import §_-Ur§.§_-ru§;
   import §_-e3§.§_-54§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §_-Tk§ extends §_-7P§
   {
      
      private static const §_-MY§:String = "RIGHT";
      
      private static const §_-xa§:String = "LEFT";
      
      private static const §_-p7§:String = "TOP";
      
      private static const §_-uW§:String = "BOTTOM";
      
      private static const §_-YM§:String = "CENTER";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-MY§ = "RIGHT";
            if(!(_loc1_ && _loc2_))
            {
               §_-xa§ = "LEFT";
               if(!(_loc1_ && §_-Tk§))
               {
                  §§goto(addr48);
               }
            }
            §§goto(addr75);
         }
         addr48:
         if(!(_loc1_ && _loc2_))
         {
            §_-uW§ = "BOTTOM";
            if(!(_loc1_ && _loc1_))
            {
               addr75:
               §_-YM§ = "CENTER";
            }
         }
      }
      
      public var mParentContainer:§_-k4§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §_-ZW§:Boolean = false;
      
      public var §_-DE§:Boolean = true;
      
      public var §_-BY§:Boolean = false;
      
      public var §_-DW§:Boolean = false;
      
      private var §_-m-§:String = "LEFT";
      
      private var §_-Nh§:String = "TOP";
      
      private var §_-ve§:Boolean = false;
      
      private var §_-5Y§:Boolean = false;
      
      private var §_-3R§:Boolean = false;
      
      private var §_-1I§:Boolean = false;
      
      private var §_-8w§:Boolean = false;
      
      private var §_-AS§:Boolean = false;
      
      protected var §_-uD§:Boolean = false;
      
      private var §_-Px§:Number;
      
      private var §_-9t§:Number;
      
      private var §_-7L§:Number;
      
      private var §_-si§:Number;
      
      private var §_-Tm§:Number;
      
      private var §_-gy§:Number;
      
      private var §_-uO§:Number;
      
      private var §_-J§:Number;
      
      public function §_-Tk§(param1:XML, param2:§_-k4§, param3:MovieClip = null)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Class = null;
         var _loc5_:* = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Sprite = null;
         this.mParentContainer = param2;
         this.mName = param1.@name;
         if(param3)
         {
            if(_loc9_ || param2)
            {
               this.mClip = param3;
               §§push(this.mParentContainer);
               if(_loc9_ || param3)
               {
                  if(§§pop())
                  {
                     if(_loc9_ || param1)
                     {
                        §§push(this.mParentContainer);
                        if(_loc9_)
                        {
                           §§pop().mClip.addChild(this.mClip);
                           addr200:
                           if(param1.@isOverlay.toString().toUpperCase() == "TRUE")
                           {
                              this.§_-BY§ = true;
                              if(_loc9_)
                              {
                                 §§push(Number(16777215));
                                 if(_loc9_ || param3)
                                 {
                                    _loc6_ = §§pop();
                                    §§push(0.5);
                                    if(_loc9_)
                                    {
                                       addr231:
                                       §§push(Number(§§pop()));
                                       if(!_loc10_)
                                       {
                                          _loc7_ = §§pop();
                                          addr235:
                                          if(param1.@overlayColor.toString() != "")
                                          {
                                             if(!_loc10_)
                                             {
                                                §§push(Number(parseInt(param1.@overlayColor)));
                                                if(_loc9_)
                                                {
                                                   addr249:
                                                   _loc6_ = §§pop();
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      addr257:
                                                      if(param1.@overlayAlpha.toString() != "")
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            addr269:
                                                            _loc7_ = Number(parseFloat(param1.@overlayAlpha));
                                                            addr270:
                                                            _loc8_ = this.getParentView().§_-Ai§(_loc6_,_loc7_);
                                                            if(!_loc10_)
                                                            {
                                                               this.mClip.addChildAt(_loc8_,0);
                                                               addr284:
                                                               §§push(Boolean(this.mParentContainer));
                                                               if(!(_loc10_ && param3))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc10_ && this))
                                                                     {
                                                                        addr303:
                                                                        §§pop();
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr312:
                                                                           if(param1.@isBehind.toString().toUpperCase() == "TRUE")
                                                                           {
                                                                              if(param2.§_-BY§)
                                                                              {
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    param2.mClip.setChildIndex(this.mClip,1);
                                                                                    if(!(_loc10_ && param3))
                                                                                    {
                                                                                       addr345:
                                                                                       if(param1.@animateOnActivation.toString().toUpperCase() == "TRUE")
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             this.§_-DW§ = true;
                                                                                             addr356:
                                                                                             this.mClip.stop();
                                                                                             addr359:
                                                                                             super(this.mClip);
                                                                                          }
                                                                                          this.§_-7L§ = this.x;
                                                                                          this.§_-si§ = this.y;
                                                                                          if(_loc9_ || param3)
                                                                                          {
                                                                                             §§goto(addr378);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr359);
                                                                                    }
                                                                                    §§goto(addr356);
                                                                                 }
                                                                                 §§goto(addr345);
                                                                              }
                                                                              else
                                                                              {
                                                                                 param2.mClip.setChildIndex(this.mClip,0);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§goto(addr345);
                                                                                 }
                                                                              }
                                                                              §§goto(addr398);
                                                                           }
                                                                           §§goto(addr345);
                                                                        }
                                                                        §§goto(addr356);
                                                                     }
                                                                  }
                                                                  §§goto(addr312);
                                                               }
                                                               §§goto(addr303);
                                                            }
                                                            §§goto(addr284);
                                                            addr264:
                                                         }
                                                         §§goto(addr356);
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                   §§goto(addr415);
                                                }
                                             }
                                             §§goto(addr269);
                                          }
                                          §§goto(addr257);
                                       }
                                    }
                                    §§goto(addr249);
                                 }
                                 §§goto(addr231);
                              }
                              §§goto(addr415);
                           }
                           §§goto(addr284);
                           addr70:
                        }
                        else
                        {
                           addr196:
                           §§pop().mClip.getChildIndex(this.mClip);
                           §§goto(addr200);
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr269);
                  }
                  §§goto(addr70);
               }
               else
               {
                  addr126:
                  if(§§pop())
                  {
                     this.mClip = this.mParentContainer.mClip.getChildByName(this.mName) as MovieClip;
                     if(this.mClip == null)
                     {
                        if(_loc9_ || param1)
                        {
                           §§push("Asset instance not found!! [" + this.mName);
                           if(!(_loc10_ && param2))
                           {
                              §§push(§§pop() + "] parent: [");
                              if(!(_loc10_ && param3))
                              {
                                 §§push(§§pop() + this.mParentContainer.mName);
                                 if(_loc9_ || this)
                                 {
                                    addr179:
                                    §§push(§§pop() + "]");
                                 }
                                 _loc5_ = §§pop();
                                 §_-54§.log(_loc5_);
                                 if(_loc9_ || param1)
                                 {
                                    §§push(this.mParentContainer);
                                    if(!_loc10_)
                                    {
                                       §§goto(addr196);
                                    }
                                    §§goto(addr284);
                                 }
                                 §§goto(addr264);
                              }
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr235);
                     }
                  }
               }
               §§goto(addr200);
            }
            addr378:
            this.§_-Tm§ = this.width;
            if(!_loc10_)
            {
               this.§_-gy§ = this.height;
               this.readInitialVisibility(param1);
               if(!(_loc10_ && param2))
               {
                  addr398:
                  this.§_-T0§(param1);
                  if(!(_loc10_ && param1))
                  {
                     addr415:
                     this.§_-V5§(param1);
                     addr418:
                     this.§_-KD§();
                  }
                  §§goto(addr418);
               }
               §§goto(addr415);
            }
            return;
         }
         if(param1.@fromLibrary.toString().toUpperCase() == "TRUE")
         {
            if(!(_loc10_ && param1))
            {
               _loc4_ = §_-z1§.§_-tn§(this.mName);
               if(!_loc10_)
               {
                  this.mClip = new _loc4_();
                  if(!(_loc10_ && param3))
                  {
                     §§push(this.mParentContainer);
                     if(!(_loc10_ && param3))
                     {
                        if(§§pop())
                        {
                           addr121:
                           if(!_loc10_)
                           {
                              §§push(this.mParentContainer);
                           }
                           §§goto(addr200);
                        }
                        §§goto(addr121);
                     }
                     §§pop().mClip.addChild(this.mClip);
                  }
               }
               §§goto(addr121);
            }
            §§goto(addr345);
         }
         else
         {
            §§push(this.mParentContainer);
            if(!_loc10_)
            {
               §§goto(addr126);
            }
         }
         §§goto(addr284);
      }
      
      public function get alignH() : String
      {
         return this.§_-m-§;
      }
      
      public function get alignV() : String
      {
         return this.§_-Nh§;
      }
      
      public function get scaleX() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§_-Px§);
         if(_loc1_)
         {
            §§push(§§pop() / this.§_-uO§);
         }
         return §§pop();
      }
      
      public function get scaleY() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§_-9t§);
         if(!_loc1_)
         {
            §§push(§§pop() / this.§_-J§);
         }
         return §§pop();
      }
      
      private function §_-KD§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§_-Px§);
         if(_loc3_ || _loc1_)
         {
            §§push(§§pop() / this.§_-uO§);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(this.§_-9t§);
         if(_loc3_)
         {
            §§push(§§pop() / this.§_-J§);
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(this.§_-8w§);
            if(!(_loc4_ && this))
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§push(_loc1_);
                     if(_loc3_)
                     {
                        if(§§pop() < _loc2_)
                        {
                           §§push(Number(_loc1_));
                           if(!_loc4_)
                           {
                              _loc2_ = §§pop();
                              addr82:
                              §§push(!this.§_-5Y§);
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(§§pop());
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          §§pop();
                                          if(!_loc4_)
                                          {
                                             §§push(_loc1_);
                                             §§push(1);
                                             if(_loc3_)
                                             {
                                                addr111:
                                                if(§§pop() > §§pop())
                                                {
                                                   §§push(1);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc3_)
                                                      {
                                                         addr118:
                                                         _loc1_ = §§pop();
                                                         addr119:
                                                         §§push(!this.§_-1I§);
                                                         §§push(!this.§_-1I§);
                                                         if(_loc3_)
                                                         {
                                                            addr125:
                                                            if(§§pop())
                                                            {
                                                               §§pop();
                                                               §§push(_loc2_);
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  §§push(1);
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        addr151:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              addr155:
                                                                              _loc2_ = Number(1);
                                                                              addr157:
                                                                              §§push(this.§_-m-§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§_-MY§);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       if(_loc3_ || this)
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(this.§_-7L§);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(this.§_-Px§);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§push(§§pop() - §_-JR§.§_-j1§);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                          §§pop().x = §§pop();
                                                                                          if(_loc3_ || _loc1_)
                                                                                          {
                                                                                             addr382:
                                                                                             §§push(this.§_-Nh§);
                                                                                             if(!(_loc4_ && _loc2_))
                                                                                             {
                                                                                                addr391:
                                                                                                §§push(§_-p7§);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr394:
                                                                                                   if(§§pop() == §§pop())
                                                                                                   {
                                                                                                      addr395:
                                                                                                      addr397:
                                                                                                      if(this.§_-3R§)
                                                                                                      {
                                                                                                         §§push(this);
                                                                                                         §§push(this.§_-si§);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc2_);
                                                                                                         }
                                                                                                         §§pop().y = §§pop();
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(this.§_-Nh§);
                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                      {
                                                                                                         addr416:
                                                                                                         §§push(§_-uW§);
                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                         {
                                                                                                            addr424:
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               §§push(this);
                                                                                                               §§push(this.§_-si§);
                                                                                                               if(_loc3_ || this)
                                                                                                               {
                                                                                                                  §§push(this.§_-9t§);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §_-JR§.§_-iZ§);
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                               §§pop().y = §§pop();
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  addr612:
                                                                                                                  if(this.§_-ve§)
                                                                                                                  {
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        this.mClip.scaleX = _loc1_;
                                                                                                                        addr621:
                                                                                                                        addr623:
                                                                                                                        if(this.§_-3R§)
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              addr626:
                                                                                                                              this.mClip.scaleY = _loc2_;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(this.§_-AS§)
                                                                                                                        {
                                                                                                                           if(_loc4_ && _loc1_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr658);
                                                                                                                     }
                                                                                                                     this.mClip.scrollRect = new Rectangle(0,0,this.§_-uO§,this.§_-J§);
                                                                                                                     §§goto(addr658);
                                                                                                                  }
                                                                                                                  §§goto(addr621);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr493:
                                                                                                                  §§push(this);
                                                                                                                  §§push(this.§_-si§);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * Math.min(_loc2_,this.§_-9t§ / this.§_-J§));
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  §§push(!this.§_-1I§);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     addr513:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr515:
                                                                                                                        §§pop();
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr520:
                                                                                                                           §§push(_loc2_ >= 1);
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              addr523:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(this.y);
                                                                                                                                 if(!(_loc4_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    §§push(this.§_-J§);
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / 2);
                                                                                                                                       if(!(_loc4_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(this.§_-9t§);
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() / this.§_-J§);
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - 1);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                              }
                                                                                                                              else if(this.§_-8w§)
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    addr566:
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(this.y);
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§_-J§);
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / 2);
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§_-9t§);
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§_-J§);
                                                                                                                                                if(_loc3_ || this)
                                                                                                                                                {
                                                                                                                                                   addr602:
                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                   if(!(_loc4_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc2_);
                                                                                                                                                   }
                                                                                                                                                   §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                                                   if(!(_loc4_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr612);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr621);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                             }
                                                                                                                                             §§goto(addr602);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr602);
                                                                                                                                 }
                                                                                                                                 §§goto(addr658);
                                                                                                                              }
                                                                                                                              §§goto(addr612);
                                                                                                                           }
                                                                                                                           §§goto(addr623);
                                                                                                                        }
                                                                                                                        §§goto(addr626);
                                                                                                                     }
                                                                                                                     §§goto(addr523);
                                                                                                                  }
                                                                                                                  §§goto(addr515);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr449:
                                                                                                               §§push(this.§_-Nh§);
                                                                                                               §§push(§_-YM§);
                                                                                                            }
                                                                                                            §§goto(addr612);
                                                                                                         }
                                                                                                         addr450:
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(this);
                                                                                                               §§push(this.§_-si§);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§push(this.§_-9t§);
                                                                                                                  if(_loc3_ || _loc1_)
                                                                                                                  {
                                                                                                                     addr480:
                                                                                                                     §§push(§§pop() - §_-JR§.§_-iZ§);
                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr477:
                                                                                                                        §§push(§§pop() / 2);
                                                                                                                     }
                                                                                                                     §§pop().y = §§pop() + §§pop();
                                                                                                                     §§push(this.§_-3R§);
                                                                                                                     if(!(_loc4_ && this))
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              §§goto(addr493);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr612);
                                                                                                                     }
                                                                                                                     §§goto(addr513);
                                                                                                                  }
                                                                                                                  §§goto(addr477);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr480);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr449);
                                                                                                   }
                                                                                                   §§goto(addr612);
                                                                                                }
                                                                                                §§goto(addr424);
                                                                                             }
                                                                                             §§goto(addr449);
                                                                                          }
                                                                                          §§goto(addr658);
                                                                                       }
                                                                                       §§goto(addr493);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.§_-m-§);
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          §§push(§_-YM§);
                                                                                          if(!(_loc4_ && _loc1_))
                                                                                          {
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§_-7L§);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(this.§_-Px§);
                                                                                                   if(!(_loc4_ && _loc1_))
                                                                                                   {
                                                                                                      §§push(§§pop() - §_-JR§.§_-j1§);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§push(§§pop() / 2);
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§pop().x = §§pop();
                                                                                                §§push(this.§_-ve§);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr239:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr240:
                                                                                                      §§push(this);
                                                                                                      §§push(this.§_-7L§);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§push(§§pop() * Math.min(_loc1_,this.§_-Px§ / this.§_-uO§));
                                                                                                      }
                                                                                                      §§pop().x = §§pop();
                                                                                                      §§push(this.§_-5Y§);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         §§push(!§§pop());
                                                                                                         if(!(_loc4_ && this))
                                                                                                         {
                                                                                                            addr268:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr271:
                                                                                                               §§push(_loc1_);
                                                                                                               §§push(1);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  addr274:
                                                                                                                  §§push(§§pop() >= §§pop());
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     addr277:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc4_ && _loc1_))
                                                                                                                        {
                                                                                                                           §§push(this);
                                                                                                                           §§push(this.x);
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              §§push(this.§_-uO§);
                                                                                                                              if(_loc3_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() / 2);
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§_-Px§);
                                                                                                                                    if(!(_loc4_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / this.§_-uO§);
                                                                                                                                       if(!(_loc4_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - 1);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                           }
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           §§goto(addr382);
                                                                                                                        }
                                                                                                                        §§goto(addr480);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(this.§_-8w§);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(this.x);
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§_-uO§);
                                                                                                                                    if(!(_loc4_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / 2);
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§_-Px§);
                                                                                                                                          if(!(_loc4_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(this.§_-uO§);
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                addr377:
                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                }
                                                                                                                                                §§pop().x = §§pop() + §§pop() * §§pop();
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr382);
                                                                                                                                                }
                                                                                                                                                §§goto(addr566);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                          }
                                                                                                                                          §§goto(addr377);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr377);
                                                                                                                              }
                                                                                                                              §§goto(addr395);
                                                                                                                           }
                                                                                                                           §§goto(addr382);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr621);
                                                                                                                  }
                                                                                                                  §§goto(addr515);
                                                                                                               }
                                                                                                               §§goto(addr520);
                                                                                                            }
                                                                                                            §§goto(addr277);
                                                                                                         }
                                                                                                         §§goto(addr513);
                                                                                                      }
                                                                                                      §§goto(addr493);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr397);
                                                                                             }
                                                                                             §§goto(addr382);
                                                                                          }
                                                                                          §§goto(addr450);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr416);
                                                                                 }
                                                                                 §§goto(addr394);
                                                                              }
                                                                              §§goto(addr391);
                                                                           }
                                                                           §§goto(addr493);
                                                                        }
                                                                        §§goto(addr157);
                                                                     }
                                                                     §§goto(addr612);
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                               §§goto(addr271);
                                                            }
                                                            §§goto(addr151);
                                                         }
                                                         §§goto(addr268);
                                                      }
                                                      §§goto(addr271);
                                                   }
                                                   §§goto(addr155);
                                                }
                                                §§goto(addr119);
                                             }
                                             §§goto(addr274);
                                          }
                                          addr658:
                                          return;
                                       }
                                       §§goto(addr395);
                                    }
                                    §§goto(addr111);
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr119);
                           }
                        }
                        else
                        {
                           §§push(_loc2_);
                           if(!_loc4_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc3_ || _loc2_)
                              {
                                 _loc1_ = §§pop();
                                 §§goto(addr82);
                              }
                              §§goto(addr118);
                           }
                        }
                     }
                     §§goto(addr520);
                  }
                  §§goto(addr240);
               }
               §§goto(addr82);
            }
            §§goto(addr239);
         }
         §§goto(addr621);
      }
      
      private function §_-V5§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!this.mParentContainer)
         {
            §§push(Number(param1.@width));
            if(!(_loc5_ && param1))
            {
               _loc2_ = §§pop();
               §§push(Number(param1.@height));
            }
            _loc3_ = §§pop();
            this.§_-Px§ = _loc2_;
            if(!(_loc5_ && _loc3_))
            {
               this.§_-9t§ = _loc3_;
            }
         }
         else
         {
            this.§_-Px§ = this.mParentContainer.viewWidth;
            this.§_-9t§ = this.mParentContainer.viewHeight;
         }
         this.§_-uO§ = this.§_-Px§;
         this.§_-J§ = this.§_-9t§;
      }
      
      private function §_-T0§(param1:XML) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:String = param1.@alignH;
         var _loc3_:String = param1.@alignV;
         var _loc4_:String = param1.@scaleH;
         var _loc5_:String = param1.@scaleV;
         var _loc6_:String = param1.@aspectRatioFixed;
         var _loc7_:String = param1.@scrollRect;
         var _loc8_:String = param1.@scaleOnMouseOver;
         this.§_-2d§(_loc2_);
         if(!(_loc10_ && param1))
         {
            this.§_-Uq§(_loc3_);
            this.§_-f7§(_loc4_);
            if(!(_loc10_ && _loc2_))
            {
               §§goto(addr71);
            }
            §§goto(addr91);
         }
         addr71:
         this.§_-r8§(_loc5_);
         if(_loc9_ || this)
         {
            this.§_-2D§(_loc6_);
            addr91:
            this.§_-YB§(_loc7_);
            this.§_-jr§(_loc8_);
         }
      }
      
      private function §_-jr§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr27:
                     §§push(param1);
                     if(!_loc2_)
                     {
                        addr37:
                        §§push(§§pop().toUpperCase());
                        if(!(_loc2_ && _loc3_))
                        {
                           param1 = §§pop();
                           if(_loc3_)
                           {
                              addr50:
                              if(param1 == "TRUE")
                              {
                                 if(_loc2_ && param1)
                                 {
                                 }
                              }
                              §§goto(addr69);
                           }
                           this.§_-uD§ = true;
                           §§goto(addr69);
                        }
                     }
                     §§goto(addr50);
                  }
               }
               addr69:
               return;
            }
            §§goto(addr37);
         }
         §§goto(addr27);
      }
      
      private function §_-2d§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(param1);
                     if(!_loc2_)
                     {
                        addr35:
                        §§push(§§pop().toUpperCase());
                        if(!(_loc2_ && _loc3_))
                        {
                           param1 = §§pop();
                           if(_loc3_ || this)
                           {
                              §§push(param1);
                              if(_loc3_)
                              {
                                 addr62:
                                 §§push(§_-MY§);
                                 if(_loc3_ || param1)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc2_ && param1))
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§pop();
                                             §§goto(addr108);
                                          }
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc2_)
                                       {
                                       }
                                    }
                                    §§goto(addr108);
                                 }
                              }
                           }
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr62);
                  }
               }
               §§goto(addr108);
            }
            §§goto(addr35);
         }
         addr108:
         if(_loc3_ || this)
         {
            addr104:
            §§push(param1 == §_-YM§);
         }
         this.§_-m-§ = param1;
      }
      
      private function §_-Uq§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(§§pop().toUpperCase());
                        if(!_loc3_)
                        {
                           §§goto(addr33);
                        }
                        §§goto(addr86);
                     }
                     addr33:
                     param1 = §§pop();
                     if(_loc2_)
                     {
                        addr36:
                        §§push(param1);
                        if(_loc2_ || param1)
                        {
                           §§push(§_-uW§);
                           if(_loc2_ || _loc3_)
                           {
                              §§push(§§pop() == §§pop());
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§pop();
                                       §§goto(addr102);
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc3_ && this)
                                 {
                                 }
                              }
                              §§goto(addr102);
                           }
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr102);
                  }
               }
               addr102:
               if(_loc2_ || this)
               {
                  addr86:
                  §§push(param1 == §_-YM§);
               }
               this.§_-Nh§ = param1;
               return;
            }
            §§goto(addr33);
         }
         §§goto(addr36);
      }
      
      private function §_-f7§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        addr34:
                        if(§§pop().toUpperCase() == "TRUE")
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              this.§_-ve§ = true;
                           }
                           this.§_-5Y§ = true;
                           §§goto(addr85);
                        }
                        §§goto(addr64);
                     }
                     if(§§pop().toUpperCase() == "DOWN")
                     {
                        if(!(_loc3_ && this))
                        {
                           addr82:
                           this.§_-ve§ = true;
                        }
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr64);
               }
               addr85:
               if(_loc2_ || _loc3_)
               {
                  addr64:
                  §§push(param1);
               }
               return;
            }
            §§goto(addr34);
         }
         §§goto(addr82);
      }
      
      private function §_-r8§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            if(§§pop())
            {
               if(!(_loc2_ && this))
               {
                  §§push(param1);
                  if(!_loc2_)
                  {
                     addr35:
                     if(§§pop().toUpperCase() == "TRUE")
                     {
                        if(!_loc2_)
                        {
                           this.§_-3R§ = true;
                           this.§_-1I§ = true;
                        }
                        §§goto(addr67);
                     }
                     §§goto(addr60);
                  }
                  if(§§pop().toUpperCase() == "DOWN")
                  {
                     this.§_-3R§ = true;
                  }
                  §§goto(addr67);
               }
               §§goto(addr60);
            }
            addr67:
            if(!(_loc2_ && this))
            {
               addr60:
               §§push(param1);
            }
            return;
         }
         §§goto(addr35);
      }
      
      private function §_-2D§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr46:
                     if(param1.toUpperCase() == "TRUE")
                     {
                        if(_loc3_)
                        {
                        }
                     }
                     §§goto(addr54);
                  }
                  this.§_-8w§ = true;
               }
               addr54:
               return;
            }
         }
         §§goto(addr46);
      }
      
      private function §_-YB§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(param1);
            if(_loc3_ || this)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           addr55:
                           if(param1.toUpperCase() == "TRUE")
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 addr70:
                                 this.§_-AS§ = true;
                              }
                           }
                        }
                        return;
                     }
                  }
               }
            }
            §§goto(addr55);
         }
         §§goto(addr70);
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.@visible;
         §§push(_loc2_);
         if(!_loc3_)
         {
            §§push(Boolean(§§pop()));
            if(!_loc3_)
            {
               §§push(§§pop());
               if(!(_loc3_ && param1))
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(_loc2_);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr46);
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr125);
                     }
                  }
                  §§goto(addr56);
               }
               §§goto(addr103);
            }
            §§goto(addr125);
         }
         addr46:
         §§push(§§pop().toUpperCase() == "FALSE");
         if(_loc4_ || _loc2_)
         {
            addr56:
            if(§§pop())
            {
               if(_loc4_ || _loc2_)
               {
                  this.setVisibility(false);
                  addr78:
                  §§push(param1.@enabled);
                  if(_loc4_)
                  {
                     _loc2_ = §§pop();
                     if(_loc4_ || _loc2_)
                     {
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           addr94:
                           §§push(Boolean(§§pop()));
                           if(!(_loc3_ && _loc3_))
                           {
                              addr103:
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr106);
                                 }
                              }
                           }
                           §§goto(addr125);
                        }
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr125);
               }
               §§goto(addr128);
            }
            else
            {
               this.setVisibility(true);
            }
            §§goto(addr78);
         }
         addr106:
         §§pop();
         if(!(_loc3_ && param1))
         {
            addr125:
            if(_loc2_.toUpperCase() == "FALSE")
            {
               if(!_loc3_)
               {
                  addr128:
                  this.setEnabled(false);
               }
            }
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.clear();
            if(!_loc1_)
            {
               §§push(this.mParentContainer);
               if(!(_loc1_ && this))
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr45);
               }
               §§pop().mClip.removeChild(this.mClip);
               §§goto(addr45);
            }
            §§goto(addr39);
         }
         addr45:
         if(!_loc1_)
         {
            addr39:
            §§push(this.mParentContainer);
         }
         do
         {
            if(this.mClip.numChildren <= 0)
            {
               if(!_loc1_)
               {
                  this.mClip = null;
                  break;
               }
               break;
            }
            this.mClip.removeChildAt(0);
         }
         while(_loc2_);
         
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.listenerEventOccured(param1,param2);
            if(_loc3_)
            {
               §§push(this.mParentContainer);
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        addr54:
                        this.mParentContainer.containerEventOccured(param1,param2,this);
                     }
                  }
                  return;
               }
               §§goto(addr54);
            }
         }
         §§goto(addr54);
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-DE§ = param1;
            if(_loc3_)
            {
               this.mClip.visible = this.§_-DE§ && this.§_-ZW§;
               if(_loc3_ || param1)
               {
                  §§goto(addr52);
               }
               §§goto(addr64);
            }
            §§goto(addr68);
         }
         addr52:
         if(this.visible)
         {
            if(_loc3_)
            {
               addr64:
               addEventListeners();
               if(!_loc2_)
               {
                  addr68:
               }
            }
         }
         else
         {
            removeEventListeners();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§_-ZW§ = param1;
            if(_loc2_ || _loc3_)
            {
               this.mClip.visible = this.§_-DE§ && this.§_-ZW§;
               if(!_loc3_)
               {
                  §§push(this.visible);
                  if(!(_loc3_ && this))
                  {
                     if(§§pop())
                     {
                        addEventListeners();
                     }
                     else
                     {
                        removeEventListeners();
                     }
                     §§push(this.§_-DW§);
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           addr72:
                           if(param1)
                           {
                              addr73:
                              this.mClip.gotoAndPlay(1);
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr91:
                              }
                           }
                           else
                           {
                              this.mClip.gotoAndStop(1);
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr72);
               }
               §§goto(addr91);
            }
            §§goto(addr73);
         }
         §§goto(addr91);
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.mClip.mouseEnabled = param1;
            if(!(_loc3_ && this))
            {
               this.mClip.mouseChildren = param1;
            }
         }
      }
      
      public function getParentView() : §_-ru§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mClip.x = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.mClip.y = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.mClip.x;
      }
      
      public function get y() : Number
      {
         return this.mClip.y;
      }
      
      public function get visible() : Boolean
      {
         return this.mClip.visible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mClip.visible = param1;
         }
      }
      
      public function get width() : Number
      {
         return this.mClip.width;
      }
      
      public function get height() : Number
      {
         return this.mClip.height;
      }
      
      override public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         super.goToFrame(param1,param2);
         §§push(Boolean(this.mClip));
         if(_loc4_)
         {
            if(§§pop())
            {
               if(!_loc3_)
               {
                  §§goto(addr34);
               }
            }
            §§goto(addr41);
         }
         addr34:
         §§pop();
         §§push(this.mClip is MovieClip);
         if(_loc4_)
         {
            addr41:
            if(§§pop())
            {
               if(_loc4_)
               {
                  §§goto(addr45);
               }
            }
            §§goto(addr48);
         }
         addr45:
         if(param2)
         {
            if(_loc4_)
            {
               this.mClip.gotoAndPlay(param1);
               addr48:
               if(!_loc4_)
               {
               }
            }
         }
         else
         {
            this.mClip.gotoAndStop(param1);
         }
         §§goto(addr66);
      }
      
      public function get viewWidth() : Number
      {
         return this.§_-Px§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§_-9t§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-Px§ = param1;
            if(!(_loc2_ && _loc2_))
            {
               addr33:
               this.§_-KD§();
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-9t§ = param1;
            if(_loc2_)
            {
               addr20:
               this.§_-KD§();
            }
            return;
         }
         §§goto(addr20);
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
