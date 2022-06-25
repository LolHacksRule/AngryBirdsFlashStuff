package §_-6C§
{
   import §_-MN§.§_-rR§;
   import flash.display.MovieClip;
   
   public class §_-k6§ extends §_-rR§
   {
      
      private static const §_-2Y§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-2Y§ = 1000 / 60;
         }
      }
      
      private var §_-Ti§:String;
      
      private var §_-qe§:String;
      
      private var §_-08K§:int = 0;
      
      private var §_-8z§:int = 0;
      
      private var §_-bs§:Number = 0;
      
      private var §_-05P§:Boolean = false;
      
      public function §_-k6§(param1:XML, param2:§_-gt§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §_-eB§(param1:Number) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(!(_loc6_ && _loc3_))
         {
            §§push(this);
            §§push(this.§_-bs§);
            if(_loc5_ || param1)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§_-bs§ = §§pop();
            if(!(_loc6_ && param1))
            {
               §§push(this);
               §§push(this.§_-bs§);
               if(_loc5_ || this)
               {
                  §§push(§§pop() / §_-2Y§);
               }
               §§pop().§_-8z§ = §§pop();
            }
         }
         loop0:
         while(true)
         {
            if(this.§_-08K§ >= this.§_-8z§)
            {
               loop1:
               while(!_loc6_)
               {
                  if(!(_loc5_ || param1))
                  {
                     this.§_-Ti§ = mClip.currentLabel;
                     break;
                     addr223:
                  }
                  this.§_-08K§ = this.§_-8z§;
                  while(!(_loc6_ && this))
                  {
                     if(!_loc5_)
                     {
                        this.§_-8z§ = this.§_-08K§;
                        break;
                     }
                     addr212:
                     this.§_-qe§ = this.§_-Ti§;
                     if(!(_loc6_ && param1))
                     {
                        if(_loc5_ || _loc2_)
                        {
                           if(!_loc6_)
                           {
                              if(_loc5_ || param1)
                              {
                                 §§push(_loc2_);
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       break loop0;
                                    }
                                    addr210:
                                    addr210:
                                    §§push(§§pop());
                                 }
                                 addr211:
                                 _loc2_ = §§pop();
                                 §§goto(addr212);
                                 addr141:
                              }
                              else
                              {
                                 addr208:
                                 §§push(this.§_-Ti§);
                              }
                              §§goto(addr210);
                           }
                           addr178:
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
                  this.§_-bs§ = this.§_-8z§ * §_-2Y§;
                  §§goto(addr178);
               }
               §§push(this.§_-Ti§);
               if(_loc5_ || _loc2_)
               {
                  if(§§pop() == this.§_-qe§)
                  {
                     continue;
                  }
                  §§goto(addr208);
               }
               §§goto(addr210);
            }
            else
            {
               var _loc3_:*;
               §§push((_loc3_ = this).§_-08K§);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(!(_loc6_ && this))
               {
                  _loc3_.§_-08K§ = _loc4_;
               }
               if(!(_loc6_ && param1))
               {
                  mClip.gotoAndStop(this.§_-08K§);
                  §§goto(addr223);
               }
               else
               {
                  §§goto(addr141);
               }
            }
            §§goto(addr211);
         }
         return §§pop();
      }
      
      public function §_-Y5§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §_-kb§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §_-07k§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §_-0Du§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            mClip.gotoAndStop(param1);
            while(true)
            {
               this.§_-Ti§ = param1;
               addr98:
               addr75:
               while(true)
               {
                  this.§_-qe§ = param1;
               }
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               this.§_-bs§ = mClip.currentFrame * §_-2Y§;
               if(_loc3_)
               {
                  addr48:
                  if(_loc3_ || param1)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr98);
                     }
                     return;
                     addr57:
                  }
                  while(true)
                  {
                     this.§_-08K§ = mClip.currentFrame;
                     §§goto(addr48);
                  }
                  addr88:
               }
               while(true)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr75);
                  }
                  else
                  {
                     while(true)
                     {
                        this.§_-8z§ = mClip.currentFrame;
                        §§goto(addr88);
                     }
                     §§goto(addr57);
                     addr93:
                  }
                  §§goto(addr82);
               }
               addr82:
               §§goto(addr98);
            }
         }
         §§goto(addr93);
      }
      
      public function §_-T8§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §_-0BQ§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §_-3t§() : Boolean
      {
         return this.§_-05P§;
      }
      
      public function set §_-3t§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§_-05P§ = param1;
         }
      }
   }
}
