package §8!;§
{
   import flash.display.MovieClip;
   
   public class §4I§
   {
       
      
      private var §2P§:MovieClip;
      
      private var §%!j§:uint;
      
      private var §[!z§:String;
      
      private var §'D§:Vector.<MovieClip>;
      
      private var §?!j§:Number = 41.666666666666664;
      
      private var §8"§:int = 0;
      
      private var §6o§:Boolean;
      
      private var §0!a§:Boolean;
      
      private var §`!7§:uint;
      
      public function §4I§(param1:MovieClip, param2:String, param3:uint = 0, param4:uint = 3)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super();
            while(true)
            {
               this.§2P§ = param1;
               while(true)
               {
                  this.§[!z§ = param2;
                  addr155:
                  while(true)
                  {
                     this.§0!a§ = true;
                     loop3:
                     while(true)
                     {
                        this.§%!j§ = param3;
                        addr145:
                        while(true)
                        {
                           §§push(this);
                           if(!(_loc6_ && param3))
                           {
                              §§push(param4);
                              if(_loc5_ || param3)
                              {
                                 if(§§pop() > this.§%!j§)
                                 {
                                    addr107:
                                    §§push(this.§%!j§);
                                    if(_loc5_ || param1)
                                    {
                                       §§push(uint(§§pop()));
                                       if(!(_loc6_ && param1))
                                       {
                                          addr134:
                                       }
                                    }
                                    else
                                    {
                                       addr138:
                                       §§push(uint(§§pop()));
                                    }
                                 }
                                 else
                                 {
                                    §§push(param4);
                                    if(_loc5_)
                                    {
                                       §§goto(addr138);
                                    }
                                 }
                                 §§pop().§`!7§ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    this.§'D§ = new Vector.<MovieClip>();
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop5;
                                       addr33:
                                       if(_loc5_ || param2)
                                       {
                                          return;
                                          addr40:
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr107);
                        }
                     }
                  }
                  addr49:
                  if(_loc6_ && param2)
                  {
                     continue;
                  }
                  this.reset();
                  addr56:
                  if(!(_loc5_ || this))
                  {
                     while(true)
                     {
                        if(_loc5_)
                        {
                           if(!_loc6_)
                           {
                              §§goto(addr49);
                           }
                           else
                           {
                              §§goto(addr155);
                           }
                        }
                        break;
                        §§goto(addr56);
                     }
                     §§goto(addr145);
                     addr45:
                  }
                  §§goto(addr33);
               }
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               this.§6o§ = false;
               §§goto(addr45);
            }
         }
         §§goto(addr40);
      }
      
      private function reset() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§%!j§)
         {
            _loc2_ = MovieClip(this.§2P§.getChildByName(this.§[!z§ + _loc1_));
            if(!_loc3_)
            {
               _loc2_.gotoAndStop(_loc2_.totalFrames);
               if(_loc4_ || this)
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
            this.§6o§ = true;
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§6o§ = false;
            do
            {
               this.reset();
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§2P§ = null;
            do
            {
               this.§'D§ = null;
            }
            while(!_loc2_);
            
         }
      }
      
      public function run(param1:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:MovieClip = null;
         if(!(_loc6_ && _loc2_))
         {
            §§push(this.§6o§);
            if(_loc5_ || param1)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     addr45:
                     if(this.§0!a§)
                     {
                        if(!(_loc6_ && this))
                        {
                           this.§,!B§();
                           if(_loc5_ || param1)
                           {
                              addr72:
                              this.§8"§ += param1;
                              if(_loc5_)
                              {
                                 addr80:
                                 §§push(this.§8"§);
                                 if(_loc5_ || param1)
                                 {
                                    §§goto(addr128);
                                 }
                                 for each(_loc2_ in this.§'D§)
                                 {
                                    if(!_loc6_)
                                    {
                                       this.§2!#§(_loc2_);
                                    }
                                 }
                                 if(!_loc6_)
                                 {
                                    this.§8"§ = 0;
                                    loop1:
                                    while(this.§'D§.length == 0)
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          while(true)
                                          {
                                             this.§0!a§ = true;
                                          }
                                          addr145:
                                       }
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             break loop1;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    §§goto(addr128);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr92);
                           }
                        }
                        §§goto(addr80);
                     }
                  }
                  §§goto(addr72);
               }
               addr128:
               if(§§pop() >= this.§?!j§)
               {
                  addr92:
                  §§push(0);
               }
               return param1;
            }
            §§goto(addr45);
         }
         §§goto(addr72);
      }
      
      private function §,!B§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:uint = 0;
         var _loc4_:MovieClip = null;
         if(_loc6_ || _loc3_)
         {
            this.§'D§.length = 0;
         }
         var _loc1_:uint = this.§0T§(1,this.§`!7§);
         var _loc2_:Array = [];
         while(true)
         {
            if(this.§'D§.length >= _loc1_)
            {
               if(_loc6_)
               {
                  break;
               }
               §§goto(addr122);
            }
            _loc3_ = this.§0T§(1,this.§%!j§);
            if(!(_loc6_ || _loc1_))
            {
               break;
            }
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               if(_loc5_)
               {
                  break;
               }
               (_loc4_ = MovieClip(this.§2P§.getChildByName(this.§[!z§ + _loc3_))).gotoAndStop(1);
               if(!_loc5_)
               {
                  this.§'D§.push(_loc4_);
                  if(!_loc5_)
                  {
                     _loc2_.push(_loc3_);
                  }
               }
            }
         }
         this.§0!a§ = false;
         addr122:
      }
      
      private function §0T§(param1:Number, param2:Number) : Number
      {
         return Math.floor(param1 + Math.random() * (param2 - param1));
      }
      
      protected function §2!#§(param1:MovieClip) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(param1.currentFrame + 1);
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc2_)
            {
               if(§§pop() >= param1.totalFrames)
               {
                  loop0:
                  while(true)
                  {
                     §§push(int(param1.totalFrames));
                     addr94:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr95:
                        loop4:
                        while(true)
                        {
                           this.§+<§(param1);
                           addr55:
                           addr79:
                           while(true)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 continue loop0;
                              }
                              continue loop4;
                           }
                           addr79:
                        }
                     }
                  }
               }
               while(true)
               {
                  param1.gotoAndStop(_loc2_);
                  if(!(_loc4_ && this))
                  {
                     break;
                  }
                  §§goto(addr55);
                  §§goto(addr79);
               }
               return;
            }
            §§goto(addr94);
         }
         §§goto(addr95);
      }
      
      protected function §+<§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§'D§.indexOf(param1) != -1)
            {
               if(_loc3_)
               {
                  this.§'D§.splice(this.§'D§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
