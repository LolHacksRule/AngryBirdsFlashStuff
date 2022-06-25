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
         if(_loc6_)
         {
            super();
            while(true)
            {
               this.§>b§ = param1;
            }
            addr149:
         }
         loop1:
         while(true)
         {
            this.§`@§ = param2;
            do
            {
               this.§,!r§ = true;
               loop3:
               do
               {
                  this.§+;§ = param3;
                  loop4:
                  while(true)
                  {
                     §§push(this);
                     if(_loc6_ || param1)
                     {
                        §§push(param4);
                        if(!_loc5_)
                        {
                           if(§§pop() > this.§+;§)
                           {
                              addr101:
                              §§push(this.§+;§);
                              if(!_loc5_)
                              {
                                 §§push(uint(§§pop()));
                                 if(_loc6_)
                                 {
                                    addr118:
                                 }
                              }
                              §§goto(addr118);
                           }
                           else
                           {
                              §§push(param4);
                              if(!_loc5_)
                              {
                                 §§push(uint(§§pop()));
                              }
                           }
                           §§pop().§@!M§ = §§pop();
                           loop5:
                           while(_loc6_)
                           {
                              this.§@!p§ = new Vector.<MovieClip>();
                              loop6:
                              while(_loc6_)
                              {
                                 this.§"!q§ = false;
                                 while(true)
                                 {
                                    if(!(_loc5_ && param2))
                                    {
                                       if(!(_loc6_ || param2))
                                       {
                                          continue loop5;
                                       }
                                       if(_loc5_)
                                       {
                                          continue loop4;
                                       }
                                       §§goto(addr74);
                                       continue loop5;
                                    }
                                    continue loop6;
                                    addr74:
                                    this.reset();
                                    if(_loc6_ || param2)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 continue loop4;
                              }
                              continue loop1;
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr101);
                  }
               }
               while(!(_loc6_ || param3));
               
            }
            while(!_loc6_);
            
            return;
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
            if(!(_loc4_ && _loc2_))
            {
               _loc2_.gotoAndStop(_loc2_.totalFrames);
               if(_loc3_)
               {
                  _loc1_++;
               }
            }
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§"!q§ = true;
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§"!q§ = false;
            do
            {
               this.reset();
            }
            while(!_loc1_);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:MovieClip = null;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§"!q§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     addr36:
                     if(this.§,!r§)
                     {
                        if(!(_loc5_ && param1))
                        {
                           this.§%k§();
                           if(_loc6_ || param1)
                           {
                              addr53:
                              this.§,<§ += param1;
                              if(_loc5_)
                              {
                              }
                              addr84:
                              var _loc3_:int = 0;
                              addr83:
                              for each(_loc2_ in this.§@!p§)
                              {
                                 if(!_loc5_)
                                 {
                                    this.§?!@§(_loc2_);
                                 }
                              }
                              if(!(_loc5_ && param1))
                              {
                                 this.§,<§ = 0;
                                 while(this.§@!p§.length == 0)
                                 {
                                    if(_loc6_ || this)
                                    {
                                       this.§,!r§ = true;
                                    }
                                    if(_loc6_ || _loc3_)
                                    {
                                       addr151:
                                       break;
                                    }
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr151);
                           }
                           §§push(this.§,<§);
                           if(!(_loc5_ && _loc2_))
                           {
                              if(§§pop() >= this.§@!I§)
                              {
                                 §§goto(addr83);
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr84);
                        }
                     }
                  }
                  §§goto(addr53);
               }
               addr114:
               return param1;
            }
            §§goto(addr36);
         }
         §§goto(addr53);
      }
      
      private function §%k§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:uint = 0;
         var _loc4_:MovieClip = null;
         if(!(_loc6_ && _loc1_))
         {
            this.§@!p§.length = 0;
         }
         var _loc1_:uint = this.§'C§(1,this.§@!M§);
         var _loc2_:Array = [];
         while(true)
         {
            if(this.§@!p§.length >= _loc1_)
            {
               if(_loc5_ || _loc3_)
               {
                  this.§,!r§ = false;
                  break;
               }
               break;
            }
            _loc3_ = this.§'C§(1,this.§+;§);
            if(!(_loc6_ && _loc1_))
            {
               if(_loc2_.indexOf(_loc3_) != -1)
               {
                  continue;
               }
               if(!(_loc5_ || this))
               {
                  break;
               }
            }
            (_loc4_ = MovieClip(this.§>b§.getChildByName(this.§`@§ + _loc3_))).gotoAndStop(1);
            if(_loc5_ || _loc1_)
            {
               this.§@!p§.push(_loc4_);
               if(_loc5_)
               {
                  _loc2_.push(_loc3_);
               }
            }
         }
      }
      
      private function §'C§(param1:Number, param2:Number) : Number
      {
         return Math.floor(param1 + Math.random() * (param2 - param1));
      }
      
      protected function §?!@§(param1:MovieClip) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(param1.currentFrame + 1);
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() >= param1.totalFrames)
               {
                  while(true)
                  {
                     §§push(int(param1.totalFrames));
                     addr79:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr80:
                        while(true)
                        {
                           this.§'!8§(param1);
                           addr69:
                           while(true)
                           {
                           }
                        }
                     }
                     addr57:
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     return;
                     addr64:
                  }
               }
               while(true)
               {
                  param1.gotoAndStop(_loc2_);
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     §§goto(addr57);
                  }
                  §§goto(addr80);
               }
               §§goto(addr64);
            }
            §§goto(addr79);
         }
         §§goto(addr64);
      }
      
      protected function §'!8§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§@!p§.indexOf(param1) != -1)
            {
               if(_loc3_)
               {
                  this.§@!p§.splice(this.§@!p§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
