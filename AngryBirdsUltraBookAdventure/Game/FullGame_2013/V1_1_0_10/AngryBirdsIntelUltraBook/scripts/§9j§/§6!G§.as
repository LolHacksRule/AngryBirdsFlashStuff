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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.§6M§ = param1;
               while(true)
               {
                  this.§?'§ = param2;
                  loop2:
                  while(!(_loc5_ && param2))
                  {
                     while(true)
                     {
                        this.§@Y§ = true;
                        while(true)
                        {
                           this.§ 7§ = param3;
                           loop5:
                           for(; !_loc5_; loop6:
                           while(true)
                           {
                              if(_loc6_ || param1)
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 this.§0!4§ = new Vector.<MovieClip>();
                                 while(!_loc5_)
                                 {
                                    this.§"G§ = false;
                                    while(_loc6_)
                                    {
                                       this.reset();
                                       if(!(_loc5_ && param2))
                                       {
                                          continue loop6;
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                              continue loop5;
                           },continue loop2)
                           {
                              §§push(this);
                              if(!(_loc5_ && this))
                              {
                                 §§push(param4);
                                 if(_loc6_ || this)
                                 {
                                    if(§§pop() > this.§ 7§)
                                    {
                                       addr90:
                                       §§push(this.§ 7§);
                                       if(_loc6_ || param1)
                                       {
                                          §§push(uint(§§pop()));
                                          if(_loc5_)
                                          {
                                             addr112:
                                             §§pop().§#!>§ = uint(§§pop());
                                             continue;
                                          }
                                          §§goto(addr112);
                                       }
                                    }
                                    else
                                    {
                                       §§push(param4);
                                       if(_loc6_ || this)
                                       {
                                          §§goto(addr112);
                                       }
                                    }
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr90);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr156);
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
            if(_loc3_ || this)
            {
               _loc2_.gotoAndStop(_loc2_.totalFrames);
               if(!_loc4_)
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
         if(_loc2_ || _loc2_)
         {
            this.§"G§ = true;
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§"G§ = false;
            do
            {
               this.reset();
            }
            while(_loc1_);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§6M§ = null;
         }
         do
         {
            this.§0!4§ = null;
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function run(param1:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:MovieClip = null;
         if(!_loc5_)
         {
            §§push(this.§"G§);
            if(_loc6_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     addr36:
                     if(this.§@Y§)
                     {
                        if(_loc6_ || _loc2_)
                        {
                           addr44:
                           this.§5X§();
                           if(!(_loc5_ && this))
                           {
                              addr53:
                              this.§@!U§ += param1;
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(this.§@!U§);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§goto(addr134);
                                 }
                                 var _loc3_:* = §§pop();
                                 for each(_loc2_ in this.§0!4§)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       this.§3!F§(_loc2_);
                                    }
                                 }
                                 if(_loc6_ || _loc3_)
                                 {
                                    this.§@!U§ = 0;
                                    while(this.§0!4§.length == 0)
                                    {
                                       if(_loc6_)
                                       {
                                          this.§@Y§ = true;
                                       }
                                       if(!_loc5_)
                                       {
                                          addr151:
                                          break;
                                       }
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr151);
                              }
                           }
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr53);
                  }
                  §§goto(addr44);
               }
               addr134:
               if(§§pop() >= this.§&!!§)
               {
                  addr88:
                  §§push(0);
               }
               return param1;
            }
            §§goto(addr36);
         }
         §§goto(addr44);
      }
      
      private function §5X§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:uint = 0;
         var _loc4_:MovieClip = null;
         if(_loc5_)
         {
            this.§0!4§.length = 0;
         }
         var _loc1_:uint = this.§6C§(1,this.§#!>§);
         var _loc2_:Array = [];
         while(true)
         {
            if(this.§0!4§.length >= _loc1_)
            {
               if(!(_loc6_ && _loc3_))
               {
                  break;
               }
               §§goto(addr126);
            }
            _loc3_ = this.§6C§(1,this.§ 7§);
            if(_loc6_)
            {
               break;
            }
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               if(!(_loc5_ || _loc3_))
               {
                  break;
               }
               (_loc4_ = MovieClip(this.§6M§.getChildByName(this.§?'§ + _loc3_))).gotoAndStop(1);
               if(_loc5_ || _loc1_)
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
         addr126:
      }
      
      private function §6C§(param1:Number, param2:Number) : Number
      {
         return Math.floor(param1 + Math.random() * (param2 - param1));
      }
      
      protected function §3!F§(param1:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(param1.currentFrame + 1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() >= param1.totalFrames)
               {
                  while(true)
                  {
                     §§push(int(param1.totalFrames));
                     addr90:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr91:
                        loop4:
                        while(true)
                        {
                           this.§3!H§(param1);
                           addr73:
                           addr80:
                           while(!(_loc4_ || _loc3_))
                           {
                              continue loop4;
                           }
                        }
                     }
                  }
                  addr87:
               }
               while(true)
               {
                  param1.gotoAndStop(_loc2_);
                  if(_loc4_ || _loc3_)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr73);
                  §§goto(addr80);
               }
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr91);
      }
      
      protected function §3!H§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§0!4§.indexOf(param1) != -1)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§0!4§.splice(this.§0!4§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
