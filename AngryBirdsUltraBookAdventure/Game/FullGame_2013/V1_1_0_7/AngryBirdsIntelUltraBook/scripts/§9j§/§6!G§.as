package §9j§
{
   import flash.display.MovieClip;
   
   public class §6!G§
   {
       
      
      private var §6M§:MovieClip;
      
      private var § 7§:uint;
      
      private var §?'§:String;
      
      private var §0!4§:Vector.<MovieClip>;
      
      private var §&!!§:Number = 41.666666666666664;
      
      private var §@!U§:int = 0;
      
      private var §"G§:Boolean;
      
      private var §@Y§:Boolean;
      
      private var §#!>§:uint;
      
      public function §6!G§(param1:MovieClip, param2:String, param3:uint = 0, param4:uint = 3)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super();
            while(true)
            {
               this.§6M§ = param1;
            }
            addr143:
         }
         loop1:
         do
         {
            this.§?'§ = param2;
            loop2:
            while(true)
            {
               this.§@Y§ = true;
               loop3:
               while(!_loc6_)
               {
                  this.§ 7§ = param3;
                  loop4:
                  do
                  {
                     §§push(this);
                     if(!_loc6_)
                     {
                        §§push(param4);
                        if(_loc5_)
                        {
                           if(§§pop() > this.§ 7§)
                           {
                              addr78:
                              §§push(this.§ 7§);
                              if(_loc5_ || param3)
                              {
                                 §§push(uint(§§pop()));
                                 if(_loc5_ || param3)
                                 {
                                    addr95:
                                 }
                              }
                           }
                           else
                           {
                              §§push(param4);
                              if(!(_loc6_ && param2))
                              {
                                 §§push(uint(§§pop()));
                              }
                           }
                           §§pop().§#!>§ = §§pop();
                           loop5:
                           while(_loc5_)
                           {
                              this.§0!4§ = new Vector.<MovieClip>();
                              while(_loc5_)
                              {
                                 this.§"G§ = false;
                                 while(_loc5_)
                                 {
                                    this.reset();
                                    if(_loc5_)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr78);
                  }
                  while(!_loc5_);
                  
                  continue loop1;
               }
               §§goto(addr143);
            }
         }
         while(!(_loc5_ || param2));
         
      }
      
      private function reset() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§ 7§)
         {
            _loc2_ = MovieClip(this.§6M§.getChildByName(this.§?'§ + _loc1_));
            if(_loc3_)
            {
               _loc2_.gotoAndStop(_loc2_.totalFrames);
               if(_loc4_)
               {
                  continue;
               }
            }
            _loc1_++;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"G§ = true;
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§"G§ = false;
         }
         do
         {
            this.reset();
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§6M§ = null;
         }
         do
         {
            this.§0!4§ = null;
         }
         while(_loc1_);
         
      }
      
      public function run(param1:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:MovieClip = null;
         if(_loc5_ || this)
         {
            §§push(this.§"G§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     addr40:
                     if(this.§@Y§)
                     {
                        if(_loc5_)
                        {
                           this.§5X§();
                           if(_loc6_ && _loc2_)
                           {
                           }
                           addr78:
                           var _loc3_:int = 0;
                           addr77:
                           for each(_loc2_ in this.§0!4§)
                           {
                              if(!_loc6_)
                              {
                                 this.§3!F§(_loc2_);
                              }
                           }
                           if(_loc5_ || _loc3_)
                           {
                              this.§@!U§ = 0;
                              loop1:
                              for(; this.§0!4§.length == 0; while(true)
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              })
                              {
                                 if(!(_loc5_ || param1))
                                 {
                                    continue;
                                 }
                              }
                              §§goto(addr108);
                           }
                           while(true)
                           {
                              this.§@Y§ = true;
                              §§goto(addr138);
                           }
                        }
                     }
                     this.§@!U§ += param1;
                     if(_loc5_)
                     {
                        §§push(this.§@!U§);
                        if(_loc5_)
                        {
                           if(§§pop() >= this.§&!!§)
                           {
                              §§goto(addr77);
                           }
                           §§goto(addr108);
                        }
                     }
                  }
                  §§goto(addr78);
               }
               addr108:
               return param1;
            }
            §§goto(addr40);
         }
         §§goto(addr78);
      }
      
      private function §5X§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:uint = 0;
         var _loc4_:MovieClip = null;
         if(!(_loc6_ && _loc2_))
         {
            this.§0!4§.length = 0;
         }
         var _loc1_:uint = this.§6C§(1,this.§#!>§);
         var _loc2_:Array = [];
         while(true)
         {
            if(this.§0!4§.length >= _loc1_)
            {
               if(!(_loc6_ && this))
               {
                  break;
               }
               §§goto(addr131);
            }
            _loc3_ = this.§6C§(1,this.§ 7§);
            if(_loc6_ && _loc3_)
            {
               break;
            }
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               if(!_loc5_)
               {
                  break;
               }
               (_loc4_ = MovieClip(this.§6M§.getChildByName(this.§?'§ + _loc3_))).gotoAndStop(1);
               if(_loc5_ || _loc3_)
               {
                  this.§0!4§.push(_loc4_);
                  if(!_loc6_)
                  {
                     _loc2_.push(_loc3_);
                  }
               }
            }
         }
         this.§@Y§ = false;
         addr131:
      }
      
      private function §6C§(param1:Number, param2:Number) : Number
      {
         return Math.floor(param1 + Math.random() * (param2 - param1));
      }
      
      protected function §3!F§(param1:MovieClip) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(param1.currentFrame + 1);
         if(_loc3_ || _loc3_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() >= param1.totalFrames)
               {
                  while(true)
                  {
                     §§push(int(param1.totalFrames));
                     addr94:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr95:
                        while(true)
                        {
                           this.§3!H§(param1);
                           addr84:
                           while(true)
                           {
                           }
                        }
                     }
                     addr72:
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     return;
                     addr79:
                  }
               }
               while(true)
               {
                  param1.gotoAndStop(_loc2_);
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  if(_loc3_ || this)
                  {
                     §§goto(addr72);
                  }
                  §§goto(addr95);
               }
               §§goto(addr79);
            }
            §§goto(addr94);
         }
         §§goto(addr79);
      }
      
      protected function §3!H§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§0!4§.indexOf(param1) != -1)
            {
               if(_loc2_)
               {
                  addr36:
                  this.§0!4§.splice(this.§0!4§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr36);
      }
   }
}
