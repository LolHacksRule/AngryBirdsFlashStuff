package §_-wA§
{
   import flash.display.MovieClip;
   
   public class §_-IO§
   {
       
      
      private var §_-54§:MovieClip;
      
      private var §_-q6§:uint;
      
      private var §_-08p§:String;
      
      private var §_-9q§:Vector.<MovieClip>;
      
      private var §_-0CO§:Number = 41.666666666666664;
      
      private var §_-cc§:int = 0;
      
      private var §_-00b§:Boolean;
      
      private var §_-tK§:Boolean;
      
      private var §_-040§:uint;
      
      public function §_-IO§(param1:MovieClip, param2:String, param3:uint = 0, param4:uint = 3)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super();
            loop0:
            while(true)
            {
               this.§_-54§ = param1;
               loop1:
               while(true)
               {
                  this.§_-08p§ = param2;
                  while(true)
                  {
                     this.§_-tK§ = true;
                     addr136:
                     while(true)
                     {
                        this.§_-q6§ = param3;
                     }
                     addr77:
                     if(_loc5_ && param2)
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        continue loop0;
                     }
                     this.§_-00b§ = false;
                     do
                     {
                        this.reset();
                     }
                     while(!(_loc6_ || param2));
                     
                     addr86:
                     if(_loc6_)
                     {
                        if(_loc5_)
                        {
                           while(true)
                           {
                              §§push(this);
                              if(!_loc5_)
                              {
                                 §§push(param4);
                                 if(!_loc5_)
                                 {
                                    if(§§pop() > this.§_-q6§)
                                    {
                                       addr98:
                                       §§push(this.§_-q6§);
                                       if(!_loc5_)
                                       {
                                          §§push(uint(§§pop()));
                                          if(_loc5_)
                                          {
                                             addr125:
                                             §§pop().§_-040§ = uint(§§pop());
                                             loop5:
                                             while(true)
                                             {
                                                this.§_-9q§ = new Vector.<MovieClip>();
                                                addr58:
                                                while(true)
                                                {
                                                   if(!(_loc6_ || param2))
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr77);
                                                   §§goto(addr86);
                                                }
                                                §§goto(addr136);
                                             }
                                          }
                                          §§goto(addr125);
                                       }
                                    }
                                    else
                                    {
                                       §§push(param4);
                                       if(_loc6_ || this)
                                       {
                                          §§goto(addr125);
                                       }
                                    }
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr98);
                           }
                           return;
                        }
                        addr131:
                        addr45:
                        continue loop1;
                     }
                     §§goto(addr58);
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      private function reset() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§_-q6§)
         {
            _loc2_ = MovieClip(this.§_-54§.getChildByName(this.§_-08p§ + _loc1_));
            if(!(_loc4_ && _loc3_))
            {
               _loc2_.gotoAndStop(_loc2_.totalFrames);
               if(!(_loc4_ && _loc1_))
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
         if(_loc2_)
         {
            this.§_-00b§ = true;
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§_-00b§ = false;
            do
            {
               this.reset();
            }
            while(_loc2_);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§_-54§ = null;
            do
            {
               this.§_-9q§ = null;
            }
            while(_loc1_);
            
         }
      }
      
      public function run(param1:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:MovieClip = null;
         if(!(_loc5_ && this))
         {
            §§push(this.§_-00b§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     addr41:
                     if(this.§_-tK§)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           addr49:
                           this.§_-Lt§();
                           if(!(_loc5_ && _loc3_))
                           {
                              this.§_-cc§ += param1;
                              addr58:
                              if(_loc6_)
                              {
                                 §§push(this.§_-cc§);
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§goto(addr129);
                                 }
                                 var _loc3_:* = §§pop();
                                 for each(_loc2_ in this.§_-9q§)
                                 {
                                    if(_loc6_)
                                    {
                                       this.§_-0Ez§(_loc2_);
                                    }
                                 }
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    this.§_-cc§ = 0;
                                 }
                                 while(this.§_-9q§.length == 0)
                                 {
                                    if(_loc6_)
                                    {
                                       this.§_-tK§ = true;
                                    }
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                 }
                                 §§goto(addr129);
                              }
                           }
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr58);
                  }
                  §§goto(addr49);
               }
               addr129:
               if(§§pop() >= this.§_-0CO§)
               {
                  addr88:
                  §§push(0);
               }
               return param1;
            }
         }
         §§goto(addr41);
      }
      
      private function §_-Lt§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:uint = 0;
         var _loc4_:MovieClip = null;
         if(!_loc5_)
         {
            this.§_-9q§.length = 0;
         }
         var _loc1_:uint = this.§_-GB§(1,this.§_-040§);
         var _loc2_:Array = [];
         while(true)
         {
            if(this.§_-9q§.length >= _loc1_)
            {
               if(_loc6_)
               {
                  break;
               }
               §§goto(addr122);
            }
            _loc3_ = this.§_-GB§(1,this.§_-q6§);
            if(!_loc6_)
            {
               break;
            }
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               if(_loc5_ && _loc1_)
               {
                  break;
               }
               (_loc4_ = MovieClip(this.§_-54§.getChildByName(this.§_-08p§ + _loc3_))).gotoAndStop(1);
               if(_loc6_ || this)
               {
                  this.§_-9q§.push(_loc4_);
                  if(!_loc6_)
                  {
                     continue;
                  }
               }
               _loc2_.push(_loc3_);
            }
         }
         this.§_-tK§ = false;
         addr122:
      }
      
      private function §_-GB§(param1:Number, param2:Number) : Number
      {
         return Math.floor(param1 + Math.random() * (param2 - param1));
      }
      
      protected function §_-0Ez§(param1:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(param1.currentFrame + 1);
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() >= param1.totalFrames)
               {
                  loop0:
                  while(true)
                  {
                     §§push(int(param1.totalFrames));
                     addr85:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr86:
                        while(true)
                        {
                           this.§_-11§(param1);
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  param1.gotoAndStop(_loc2_);
                  if(_loc4_)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr63);
                  §§goto(addr63);
               }
               return;
               addr58:
            }
            §§goto(addr85);
         }
         §§goto(addr58);
      }
      
      protected function §_-11§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§_-9q§.indexOf(param1) != -1)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.§_-9q§.splice(this.§_-9q§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
