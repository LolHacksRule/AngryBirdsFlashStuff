package §_-l1§
{
   import §_-IV§.§_-dW§;
   import §_-Qx§.§_-JO§;
   import §_-Qx§.§_-Sf§;
   import §_-ZA§.§_-tg§;
   import §_-e3§.Base64;
   import §_-hq§.§_-AD§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §_-YO§ extends EventDispatcher
   {
      
      protected static const §_-iM§:Number = 1000;
      
      protected static const §_-jG§:Number = 60;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-iM§ = 1000;
            if(_loc2_)
            {
               addr28:
               §_-jG§ = 60;
            }
            return;
         }
         §§goto(addr28);
      }
      
      protected var §_-Xw§:Dictionary;
      
      protected var §_-Z1§:Dictionary;
      
      protected var §_-dQ§:Dictionary;
      
      protected var §_-e0§:Dictionary;
      
      protected var §_-Cz§:Boolean;
      
      protected var §_-XE§:String;
      
      protected var §_-xu§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §_-YO§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         this.§_-xu§ = param1;
         if(_loc2_ || param1)
         {
            this.§_-Xw§ = new Dictionary();
            this.§_-Z1§ = new Dictionary();
            this.§_-dQ§ = new Dictionary();
            this.§_-e0§ = new Dictionary();
            this.§_-Cz§ = false;
            if(_loc2_)
            {
               this.mMightyEagleTimer = new Timer(§_-iM§,§_-jG§);
               if(!_loc3_)
               {
                  addr68:
                  this.mMightyEagleTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-uc§);
               }
               return;
            }
         }
         §§goto(addr68);
      }
      
      private function §_-uc§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§_-gC§));
            if(!_loc3_)
            {
               this.§_-XE§ = null;
            }
         }
      }
      
      public function §_-fA§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.mMightyEagleTimer.running)
            {
               if(_loc3_ || this)
               {
                  this.mMightyEagleTimer.reset();
                  if(_loc3_)
                  {
                     addr39:
                     this.mMightyEagleTimer.start();
                     if(_loc3_ || param1)
                     {
                     }
                     §§goto(addr59);
                  }
               }
               this.§_-XE§ = param1;
            }
            addr59:
            return;
         }
         §§goto(addr39);
      }
      
      public function §_-Ds§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§_-XE§ == param1)
            {
               if(_loc2_)
               {
                  §§push(true);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr39:
                  if(this.mMightyEagleTimer.running)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        §§push(false);
                        if(!_loc3_)
                        {
                           §§goto(addr60);
                        }
                     }
                     else
                     {
                        addr61:
                        §§push(true);
                     }
                     return §§pop();
                  }
                  §§goto(addr61);
               }
               addr60:
               return §§pop();
            }
         }
         §§goto(addr39);
      }
      
      public function §_-on§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§_-jG§);
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(_loc5_)
            {
               addr28:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(§§pop() / §_-jG§);
            }
            var _loc2_:int = §§pop();
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(§§pop() % §_-jG§);
            }
            var _loc3_:int = §§pop();
            if(!(_loc4_ && _loc1_))
            {
               if(_loc3_ < 10)
               {
                  if(_loc5_)
                  {
                     addr63:
                     §§push("");
                     if(!_loc4_)
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           addr70:
                           §§push(§§pop() + §§pop() + ":0");
                           §§push(_loc3_);
                           if(_loc5_)
                           {
                              return §§pop() + §§pop();
                           }
                        }
                        addr99:
                        return §§pop() + §§pop() + ":" + _loc3_;
                        addr95:
                     }
                     §§goto(addr70);
                  }
                  else
                  {
                     addr77:
                     §§push("");
                     if(_loc5_)
                     {
                        §§push(_loc2_);
                        if(_loc5_ || _loc3_)
                        {
                           §§goto(addr95);
                        }
                        §§goto(addr99);
                     }
                  }
                  §§goto(addr99);
               }
               §§goto(addr77);
            }
            §§goto(addr63);
         }
         §§goto(addr28);
      }
      
      public function §_-xN§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-dW§ = null;
         if(!(_loc3_ && param1))
         {
            if(this.§_-Xw§[param1])
            {
               addr36:
               _loc2_ = this.§_-Xw§[param1];
               if(_loc4_ || this)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr36);
      }
      
      public function §_-Qi§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-dW§ = null;
         if(_loc4_)
         {
            if(this.§_-Z1§[param1])
            {
               addr31:
               _loc2_ = this.§_-Z1§[param1];
               if(!(_loc3_ && param1))
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr31);
      }
      
      public function §_-L3§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-JO§ = §_-Sf§.§_-in§(param1);
         §§push(§_-tg§);
         if(_loc3_ || param1)
         {
            return §§pop().§_-bG§([!!_loc2_ ? _loc2_.name : "unknownEpisode",param1,this.§_-xN§(param1),this.§_-Al§(param1),this.§_-Qi§(param1),"dskfS!nuDy2i7rnDicsk38"].join("|"));
         }
         §§goto(addr35);
      }
      
      public function §_-1O§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:URLRequest = new URLRequest(this.§_-xu§ + "/submitscore");
         if(!_loc5_)
         {
            _loc2_.method = URLRequestMethod.POST;
            if(!_loc5_)
            {
               _loc2_.contentType = "application/json";
            }
         }
         var _loc3_:§_-JO§ = §_-Sf§.§_-in§(param1);
         if(_loc6_)
         {
            _loc2_.data = Base64.encode(§_-AD§.encode({
               "episode":(!!_loc3_ ? _loc3_.name : "unknownEpisode"),
               "level":param1,
               "points":this.§_-xN§(param1),
               "stars":this.§_-Al§(param1),
               "destructionPercentage":this.§_-Qi§(param1),
               "security":this.§_-L3§(param1)
            }));
         }
         var _loc4_:URLLoader;
         (_loc4_ = new URLLoader()).addEventListener(Event.COMPLETE,this.§_-bS§);
         if(!_loc5_)
         {
            _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
            if(!(_loc5_ && _loc2_))
            {
               _loc4_.load(_loc2_);
            }
         }
      }
      
      private function §_-bS§(param1:Event) : void
      {
      }
      
      public function §_-Ak§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§_-dQ§[param1] = param2;
         }
      }
      
      public function §_-yY§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§_-dQ§[param1] = param2;
         }
      }
      
      public function §_-ux§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§_-dW§ = new §_-dW§(param2);
         if(!_loc5_)
         {
            this.§_-Xw§[param1] = _loc3_;
         }
      }
      
      public function §_-Li§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§_-dW§ = new §_-dW§(param2);
         if(!_loc4_)
         {
            this.§_-Z1§[param1] = _loc3_;
         }
      }
      
      public function §_-Al§(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§_-Sf§);
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(param2);
            if(!(_loc3_ && param2))
            {
               if(§§pop() != -1)
               {
                  addr40:
                  §§push(param2);
                  if(_loc4_)
                  {
                     §§push(int(§§pop()));
                     if(_loc4_ || param2)
                     {
                     }
                  }
               }
               else
               {
                  §§push(this.§_-xN§(param1));
                  if(!(_loc3_ && param1))
                  {
                     addr69:
                     §§push(int(§§pop()));
                  }
               }
               return §§pop().§_-mF§(§§pop(),§§pop());
            }
            §§goto(addr69);
         }
         §§goto(addr40);
      }
      
      public function §_-Xq§(param1:§_-JO§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§_-h0§())
         {
            if(!(_loc6_ && _loc3_))
            {
               §§push(_loc2_);
               if(!(_loc6_ && this))
               {
                  §§push(int(§§pop() + this.§_-xN§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §_-xE§(param1:§_-JO§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§_-h0§())
         {
            if(!(_loc6_ && param1))
            {
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(int(§§pop() + this.§_-Al§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §_-GO§(param1:§_-JO§) : int
      {
         return param1.§_-h0§().length * 3;
      }
      
      public function §_-XA§(param1:§_-JO§) : int
      {
         return param1.§_-h0§().length;
      }
      
      public function §_-B5§(param1:§_-JO§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-h0§())
         {
            if(_loc6_ || this)
            {
               if(this.§_-Qi§(_loc3_) == 100)
               {
                  if(!(_loc7_ && this))
                  {
                     _loc2_++;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function get §_-9w§() : Dictionary
      {
         return this.§_-dQ§;
      }
      
      public function get §_-xq§() : Dictionary
      {
         return this.§_-dQ§;
      }
      
      public function get §_-mT§() : Boolean
      {
         return this.§_-Cz§;
      }
      
      public function set §_-mT§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-Cz§ = param1;
         }
      }
      
      public function get §_-QN§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §_-vO§() : String
      {
         return this.§_-XE§;
      }
   }
}
