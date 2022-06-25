package §_-z-§
{
   import §_-TG§.§_-00u§;
   import flash.system.Capabilities;
   
   public class §_-sX§
   {
      
      public static const §_-58§:String = "@@";
      
      public static const §_-H5§:String = "@";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §_-58§ = "@@";
         }
         do
         {
            §_-H5§ = "@";
         }
         while(_loc1_ && §_-sX§);
         
      }
      
      private var §_-a4§:String;
      
      private var §_-lB§:int;
      
      private var §_-0D2§:Number;
      
      private var §_-063§:Number;
      
      protected var §_-wG§:Boolean;
      
      protected var §_-18§:Vector.<§_-Vw§>;
      
      protected var §_-E-§:Vector.<§_-8w§>;
      
      private var §_-02k§:int;
      
      private var §_-08E§:int;
      
      public function §_-sX§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-18§ = new Vector.<§_-Vw§>();
            while(true)
            {
               this.§_-E-§ = new Vector.<§_-8w§>();
               addr29:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               return;
               addr46:
            }
         }
         while(true)
         {
            super();
            while(!_loc3_)
            {
               this.§_-a4§ = param1;
               while(_loc2_ || _loc2_)
               {
                  this.§_-0D2§ = 1;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr29);
               }
            }
         }
         §§goto(addr46);
      }
      
      public static function initialize(param1:String) : §_-sX§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:§_-sX§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§_-Vw§ = null;
         var _loc9_:§_-8w§ = null;
         var _loc3_:Array = param1.split(§_-58§);
         if(_loc12_)
         {
            if(_loc3_.length == 3)
            {
               addr48:
               _loc2_ = new §_-sX§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§_-H5§);
               _loc5_ = _loc3_[2].split(§_-H5§);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(_loc12_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        if(_loc8_ = §_-Vw§.initialize(_loc6_))
                        {
                           if(_loc12_)
                           {
                              _loc2_.§_-18§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(!_loc13_)
                     {
                        if(!_loc13_)
                        {
                           if(_loc12_ || §_-sX§)
                           {
                              _loc10_ = 0;
                              if(!(_loc13_ && _loc3_))
                              {
                                 _loc11_ = _loc5_;
                                 if(_loc12_ || param1)
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       break loop0;
                                    }
                                    addr179:
                                    return _loc2_;
                                    addr175:
                                    addr178:
                                    addr177:
                                 }
                                 while(true)
                                 {
                                    if(_loc9_ = §_-8w§.initialize(_loc7_))
                                    {
                                       if(!_loc13_)
                                       {
                                          _loc2_.§_-E-§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr175);
                                 }
                                 addr162:
                              }
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr177);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc7_ = §§nextvalue(_loc10_,_loc11_);
                     §§goto(addr162);
                  }
                  §§goto(addr179);
               }
            }
            §§goto(addr179);
         }
         §§goto(addr48);
      }
      
      public function get §_-3t§() : Boolean
      {
         return this.§_-wG§;
      }
      
      public function get §_-081§() : String
      {
         return this.§_-a4§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-0D2§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§_-0D2§;
      }
      
      protected function get §_-5s§() : int
      {
         return this.§_-lB§;
      }
      
      public function §_-QL§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(!this.§_-wG§)
            {
               if(_loc7_)
               {
                  this.§_-18§.push(new §_-Vw§(param1,param2,param3,param4,param5));
               }
            }
         }
      }
      
      public function §_-R§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!this.§_-wG§)
            {
               do
               {
                  if(this.§_-E-§.length > 0)
                  {
                     if(!_loc3_)
                     {
                        addr28:
                        if(this.§_-E-§[this.§_-E-§.length - 1].step == param1)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              return;
                           }
                        }
                        do
                        {
                           this.§_-E-§.push(new §_-8w§(param1));
                        }
                        while(!(_loc2_ || this));
                        
                        continue;
                        addr28:
                     }
                     while(true)
                     {
                        §§goto(addr28);
                     }
                  }
                  §§goto(addr28);
               }
               while(!(_loc2_ || param1));
               
               addr59:
            }
            return;
         }
         §§goto(addr59);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§_-wG§ = true;
         }
      }
      
      public function step(param1:§_-00u§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§_-Vw§ = null;
         var _loc3_:§_-8w§ = null;
         if(_loc7_ || _loc3_)
         {
            if(this.§_-18§.length > this.§_-02k§)
            {
               if(!(_loc6_ && _loc2_))
               {
                  _loc2_ = this.§_-18§[this.§_-02k§];
                  if(_loc7_ || this)
                  {
                     if(_loc2_.step == this.§_-5s§)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           addr69:
                           param1.slingshot.§_-IY§(_loc2_.x,_loc2_.y,_loc2_.§_-02a§,_loc2_.angle);
                           if(_loc6_ && _loc2_)
                           {
                           }
                           §§goto(addr122);
                        }
                        var _loc4_:*;
                        §§push((_loc4_ = this).§_-02k§);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc5_:* = §§pop();
                        if(_loc7_ || _loc2_)
                        {
                           _loc4_.§_-02k§ = _loc5_;
                        }
                        §§goto(addr122);
                     }
                     addr122:
                     if(this.§_-E-§.length > this.§_-08E§)
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           addr135:
                           _loc3_ = this.§_-E-§[this.§_-08E§];
                           if(!_loc6_)
                           {
                              if(_loc3_.step == this.§_-5s§)
                              {
                                 if(_loc7_ || this)
                                 {
                                 }
                              }
                              §§goto(addr195);
                           }
                           param1.activatePowerup();
                           if(_loc7_ || param1)
                           {
                              §§push((_loc4_ = this).§_-08E§);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              _loc5_ = §§pop();
                              if(_loc7_ || this)
                              {
                                 _loc4_.§_-08E§ = _loc5_;
                              }
                           }
                        }
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr69);
               }
               addr195:
               §§push((_loc4_ = this).§_-lB§);
               if(!_loc6_)
               {
                  §§push(§§pop() + 1);
               }
               _loc5_ = §§pop();
               if(_loc7_)
               {
                  _loc4_.§_-lB§ = _loc5_;
               }
               return;
            }
            §§goto(addr69);
         }
         §§goto(addr135);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(_loc2_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(§§pop() + (this.§_-a4§ + §_-58§ + this.§_-2§() + §_-58§ + this.§_-Sm§()));
               if(_loc2_)
               {
                  _loc1_ = §§pop();
                  addr55:
                  return _loc1_;
               }
            }
         }
         §§goto(addr55);
      }
      
      private function §_-2§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(§§pop() + this.§_-18§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§_-18§.length)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(!(_loc4_ && this))
               {
                  §§push(_loc1_);
                  if(_loc3_ || this)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           §§push(§§pop() + this.§_-18§[_loc2_].toString());
                           while(true)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 _loc1_ = §§pop();
                                 while(!_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 _loc2_++;
                                 continue loop0;
                                 addr108:
                              }
                              else
                              {
                                 addr114:
                              }
                              while(true)
                              {
                                 §§push(§§pop() + §_-H5§);
                              }
                           }
                           addr100:
                        }
                        while(true)
                        {
                           _loc1_ = §§pop();
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr100);
               }
               §§goto(addr108);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr114);
         }
         return §§pop();
      }
      
      private function §_-Sm§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc1_);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + this.§_-E-§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§_-E-§.length)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(!(_loc4_ && _loc3_))
               {
                  if(!(_loc4_ && this))
                  {
                     §§push(_loc1_);
                     if(_loc3_)
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
                              §§push(§§pop() + this.§_-E-§[_loc2_].toString());
                              while(!_loc3_)
                              {
                              }
                              _loc1_ = §§pop();
                              _loc2_++;
                              continue loop0;
                              addr117:
                              addr120:
                           }
                           else
                           {
                              addr124:
                           }
                           while(true)
                           {
                              §§push(§§pop() + §_-H5§);
                           }
                           while(true)
                           {
                              _loc1_ = §§pop();
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr128);
               }
               §§goto(addr120);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr124);
         }
         return §§pop();
      }
   }
}
