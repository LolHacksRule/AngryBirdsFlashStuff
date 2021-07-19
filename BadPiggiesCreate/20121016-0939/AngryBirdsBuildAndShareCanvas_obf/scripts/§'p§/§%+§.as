package §'p§
{
   import §'!A§.§9!!§;
   import flash.display.MovieClip;
   
   public class §%+§ extends §9!!§
   {
      
      private static const §>5§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §>5§ = 1000 / 60;
         }
      }
      
      private var §"!%§:String;
      
      private var §=v§:String;
      
      private var §5x§:int = 0;
      
      private var §0!%§:int = 0;
      
      private var §4!5§:Number = 0;
      
      private var §+$§:Boolean = false;
      
      public function §%+§(param1:XML, param2:§`!T§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
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
      
      public function §?" §(param1:Number) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_)
         {
            §§push(this);
            §§push(this.§4!5§);
            if(!_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§4!5§ = §§pop();
            if(!_loc5_)
            {
               §§push(this);
               §§push(this.§4!5§);
               if(_loc6_)
               {
                  §§push(§§pop() / §>5§);
               }
               §§pop().§0!%§ = §§pop();
            }
         }
         loop0:
         while(true)
         {
            if(this.§5x§ < this.§0!%§)
            {
               var _loc3_:*;
               §§push((_loc3_ = this).§5x§);
               if(!_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(_loc6_)
               {
                  _loc3_.§5x§ = _loc4_;
               }
               if(_loc6_)
               {
                  mClip.gotoAndStop(this.§5x§);
                  this.§"!%§ = mClip.currentLabel;
                  while(true)
                  {
                     §§push(this.§"!%§);
                     if(_loc5_)
                     {
                        break;
                     }
                     if(§§pop() != this.§=v§)
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  addr162:
                  _loc2_ = §§pop();
                  this.§0!%§ = this.§5x§;
                  loop3:
                  while(true)
                  {
                     this.§4!5§ = this.§0!%§ * §>5§;
                     addr130:
                     while(!(_loc6_ || _loc2_))
                     {
                        continue loop3;
                     }
                     continue loop0;
                  }
                  addr184:
                  addr163:
                  addr179:
               }
               else
               {
                  loop1:
                  while(true)
                  {
                     this.§=v§ = this.§"!%§;
                     if(_loc6_ || param1)
                     {
                        if(_loc6_ || param1)
                        {
                           if(!(_loc5_ && param1))
                           {
                              if(!_loc5_)
                              {
                                 §§push(_loc2_);
                                 if(_loc6_)
                                 {
                                    if(!_loc5_)
                                    {
                                       break loop0;
                                    }
                                    addr161:
                                    §§push(§§pop());
                                 }
                              }
                              else
                              {
                                 §§goto(addr184);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr163);
                        }
                        else
                        {
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 break loop1;
                              }
                              this.§5x§ = this.§0!%§;
                              while(!_loc5_)
                              {
                                 continue loop1;
                              }
                           }
                           addr114:
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr120);
                  }
               }
               while(true)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     §§goto(addr161);
                     §§push(this.§"!%§);
                  }
                  else
                  {
                     §§goto(addr179);
                  }
                  §§goto(addr162);
               }
            }
            §§goto(addr114);
         }
         return §§pop();
      }
      
      public function §>q§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §5!$§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §@!t§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §^Q§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            mClip.gotoAndStop(param1);
            loop0:
            while(true)
            {
               this.§"!%§ = param1;
               addr108:
               while(true)
               {
                  this.§=v§ = param1;
                  addr68:
                  if(_loc3_ || _loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      public function §5!>§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §+!u§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §if §() : Boolean
      {
         return this.§+$§;
      }
      
      public function set §if §(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+$§ = param1;
         }
      }
   }
}
