package §-2§
{
   import flash.display.MovieClip;
   
   public class §[s§
   {
       
      
      private var §8!3§:MovieClip;
      
      private var §2x§:uint;
      
      private var §7!M§:String;
      
      private var §8d§:Vector.<MovieClip>;
      
      private var §]U§:Number = 41.666666666666664;
      
      private var §2!e§:int = 0;
      
      private var § !G§:Boolean;
      
      private var §7!o§:Boolean;
      
      private var §%!H§:uint;
      
      public function §[s§(param1:MovieClip, param2:String, param3:uint = 0, param4:uint = 3)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§8!3§ = param1;
            }
            addr154:
         }
         loop1:
         while(true)
         {
            this.§7!M§ = param2;
            while(true)
            {
               this.§7!o§ = true;
               while(!(_loc5_ && param3))
               {
                  this.§2x§ = param3;
                  continue loop1;
                  loop6:
                  while(!(_loc5_ && param3))
                  {
                     this.§ !G§ = false;
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
                        this.§8d§ = new Vector.<MovieClip>();
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
         while(_loc1_ <= this.§2x§)
         {
            _loc2_ = MovieClip(this.§8!3§.getChildByName(this.§7!M§ + _loc1_));
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
            this.§ !G§ = true;
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§ !G§ = false;
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
            this.§8!3§ = null;
            do
            {
               this.§8d§ = null;
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
            §§push(this.§ !G§);
            if(_loc5_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc5_ || this)
                  {
                     addr40:
                     if(this.§7!o§)
                     {
                        if(!_loc6_)
                        {
                           addr43:
                           this.§+8§();
                           if(_loc5_)
                           {
                              addr47:
                              this.§2!e§ += param1;
                              if(!_loc6_)
                              {
                                 addr55:
                                 §§push(this.§2!e§);
                                 if(_loc5_ || this)
                                 {
                                    §§goto(addr118);
                                 }
                                 var _loc3_:* = §§pop();
                                 for each(_loc2_ in this.§8d§)
                                 {
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       this.§=!S§(_loc2_);
                                    }
                                 }
                                 if(!_loc6_)
                                 {
                                    this.§2!e§ = 0;
                                    while(this.§8d§.length == 0)
                                    {
                                       if(_loc5_)
                                       {
                                          this.§7!o§ = true;
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
               if(§§pop() >= this.§]U§)
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
      
      private function §+8§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:uint = 0;
         var _loc4_:MovieClip = null;
         if(!_loc6_)
         {
            this.§8d§.length = 0;
         }
         var _loc1_:uint = this.§8!n§(1,this.§%!H§);
         var _loc2_:Array = [];
         while(true)
         {
            if(this.§8d§.length >= _loc1_)
            {
               if(_loc5_)
               {
                  break;
               }
            }
            else
            {
               _loc3_ = this.§8!n§(1,this.§2x§);
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
                  (_loc4_ = MovieClip(this.§8!3§.getChildByName(this.§7!M§ + _loc3_))).gotoAndStop(1);
                  if(_loc5_ || this)
                  {
                     this.§8d§.push(_loc4_);
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
         this.§7!o§ = false;
         addr121:
      }
      
      private function §8!n§(param1:Number, param2:Number) : Number
      {
         return Math.floor(param1 + Math.random() * (param2 - param1));
      }
      
      protected function §=!S§(param1:MovieClip) : void
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
                        this.§=!e§(param1);
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
      
      protected function §=!e§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§8d§.indexOf(param1) != -1)
            {
               if(!_loc3_)
               {
                  this.§8d§.splice(this.§8d§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
