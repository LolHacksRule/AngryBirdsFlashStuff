package §7=§
{
   import flash.display.MovieClip;
   
   public class §&,§
   {
       
      
      private var §>b§:MovieClip;
      
      private var §+;§:uint;
      
      private var §`@§:String;
      
      private var §@!p§:Vector.<MovieClip>;
      
      private var §@!I§:Number = 41.666666666666664;
      
      private var §,<§:int = 0;
      
      private var §"!q§:Boolean;
      
      private var §,!r§:Boolean;
      
      private var §@!M§:uint;
      
      public function §&,§(param1:MovieClip, param2:String, param3:uint = 0, param4:uint = 3)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§>b§ = param1;
            }
            addr154:
         }
         loop1:
         while(true)
         {
            this.§`@§ = param2;
            while(true)
            {
               this.§,!r§ = true;
               while(!(_loc5_ && param3))
               {
                  this.§+;§ = param3;
                  continue loop1;
                  loop6:
                  while(!(_loc5_ && param3))
                  {
                     this.§"!q§ = false;
                     for(; _loc6_; this.reset(),if(!(_loc5_ && this))
                     {
                        if(_loc6_)
                        {
                           if(_loc6_)
                           {
                              return;
                           }
                           continue loop1;
                        }
                        continue loop6;
                     })
                     {
                        if(!_loc5_)
                        {
                           continue;
                        }
                        §§goto(addr154);
                     }
                     while(true)
                     {
                        this.§@!p§ = new Vector.<MovieClip>();
                        continue loop6;
                     }
                  }
               }
            }
         }
      }
      
      private function reset() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§+;§)
         {
            _loc2_ = MovieClip(this.§>b§.getChildByName(this.§`@§ + _loc1_));
            if(_loc3_)
            {
               _loc2_.gotoAndStop(_loc2_.totalFrames);
               if(_loc4_ && _loc1_)
               {
                  continue;
               }
            }
            _loc1_++;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§"!q§ = true;
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"!q§ = false;
            do
            {
               this.reset();
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§>b§ = null;
            do
            {
               this.§@!p§ = null;
            }
            while(_loc1_);
            
         }
      }
      
      public function run(param1:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:MovieClip = null;
         if(_loc5_)
         {
            §§push(this.§"!q§);
            if(_loc5_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc5_ || this)
                  {
                     addr40:
                     if(this.§,!r§)
                     {
                        if(!_loc6_)
                        {
                           addr43:
                           this.§%k§();
                           if(_loc5_)
                           {
                              addr47:
                              this.§,<§ += param1;
                              if(!_loc6_)
                              {
                                 addr55:
                                 §§push(this.§,<§);
                                 if(_loc5_ || this)
                                 {
                                    §§goto(addr118);
                                 }
                                 var _loc3_:* = §§pop();
                                 for each(_loc2_ in this.§@!p§)
                                 {
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       this.§?!@§(_loc2_);
                                    }
                                 }
                                 if(!_loc6_)
                                 {
                                    this.§,<§ = 0;
                                    while(this.§@!p§.length == 0)
                                    {
                                       if(_loc5_)
                                       {
                                          this.§,!r§ = true;
                                       }
                                       if(_loc5_ || _loc3_)
                                       {
                                          addr140:
                                          break;
                                       }
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr77);
                           }
                        }
                        §§goto(addr55);
                     }
                     §§goto(addr47);
                  }
                  §§goto(addr43);
               }
               addr118:
               if(§§pop() >= this.§@!I§)
               {
                  addr77:
                  §§push(0);
               }
               return param1;
            }
            §§goto(addr40);
         }
         §§goto(addr47);
      }
      
      private function §%k§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:uint = 0;
         var _loc4_:MovieClip = null;
         if(!_loc6_)
         {
            this.§@!p§.length = 0;
         }
         var _loc1_:uint = this.§'C§(1,this.§@!M§);
         var _loc2_:Array = [];
         while(true)
         {
            if(this.§@!p§.length >= _loc1_)
            {
               if(_loc5_)
               {
                  break;
               }
            }
            else
            {
               _loc3_ = this.§'C§(1,this.§+;§);
               if(!(_loc5_ || _loc2_))
               {
                  break;
               }
               if(_loc2_.indexOf(_loc3_) != -1)
               {
                  continue;
               }
               if(!_loc6_)
               {
                  (_loc4_ = MovieClip(this.§>b§.getChildByName(this.§`@§ + _loc3_))).gotoAndStop(1);
                  if(_loc5_ || this)
                  {
                     this.§@!p§.push(_loc4_);
                     if(!_loc6_)
                     {
                        _loc2_.push(_loc3_);
                     }
                  }
                  continue;
               }
            }
            §§goto(addr121);
         }
         this.§,!r§ = false;
         addr121:
      }
      
      private function §'C§(param1:Number, param2:Number) : Number
      {
         return Math.floor(param1 + Math.random() * (param2 - param1));
      }
      
      protected function §?!@§(param1:MovieClip) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = param1.currentFrame + 1;
         if(_loc3_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() >= param1.totalFrames)
               {
                  if(_loc3_)
                  {
                     addr79:
                     _loc2_ = param1.totalFrames;
                     loop2:
                     while(true)
                     {
                        this.§'!8§(param1);
                        addr65:
                        addr67:
                        while(!_loc3_)
                        {
                           continue loop2;
                        }
                     }
                     addr80:
                  }
                  §§goto(addr80);
               }
               while(true)
               {
                  param1.gotoAndStop(_loc2_);
                  if(!(_loc4_ && _loc2_))
                  {
                     break;
                  }
                  §§goto(addr65);
                  §§goto(addr67);
               }
               return;
            }
         }
         §§goto(addr79);
      }
      
      protected function §'!8§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§@!p§.indexOf(param1) != -1)
            {
               if(!_loc3_)
               {
                  this.§@!p§.splice(this.§@!p§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
