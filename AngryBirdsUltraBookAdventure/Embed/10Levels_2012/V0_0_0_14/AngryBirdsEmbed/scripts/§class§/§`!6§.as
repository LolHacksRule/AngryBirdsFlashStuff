package §class§
{
   import §-!F§.§`!&§;
   import flash.display.MovieClip;
   
   public class §`!6§ extends §`!&§
   {
      
      private static const § !-§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            § !-§ = 1000 / 60;
         }
      }
      
      private var §9;§:String;
      
      private var §`!C§:String;
      
      private var §8N§:int = 0;
      
      private var § 9§:int = 0;
      
      private var §?z§:Number = 0;
      
      private var §=l§:Boolean = false;
      
      public function §`!6§(param1:XML, param2:§3C§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §'2§(param1:Number) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(_loc5_ || this)
         {
            §§push(this);
            §§push(this.§?z§);
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§?z§ = §§pop();
            if(_loc5_ || param1)
            {
               §§push(this);
               §§push(this.§?z§);
               if(_loc5_)
               {
                  §§push(§§pop() / § !-§);
               }
               §§pop().§ 9§ = §§pop();
            }
         }
         while(true)
         {
            if(this.§8N§ < this.§ 9§)
            {
               var _loc3_:*;
               §§push((_loc3_ = this).§8N§);
               if(_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(!_loc6_)
               {
                  _loc3_.§8N§ = _loc4_;
               }
               mClip.gotoAndStop(this.§8N§);
               this.§9;§ = mClip.currentLabel;
               §§push(this.§9;§);
               if(!(_loc5_ || this))
               {
                  break;
               }
               if(§§pop() != this.§`!C§)
               {
                  if(_loc5_ || _loc2_)
                  {
                     §§push(this.§9;§);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(§§pop());
                        if(_loc5_)
                        {
                           _loc2_ = §§pop();
                           this.§ 9§ = this.§8N§;
                           if(_loc5_)
                           {
                              this.§?z§ = this.§ 9§ * § !-§;
                              if(_loc5_)
                              {
                                 continue;
                              }
                           }
                        }
                        break;
                     }
                     break;
                  }
                  addr154:
                  this.§`!C§ = this.§9;§;
                  §§push(_loc2_);
                  break;
               }
               continue;
            }
            this.§8N§ = this.§ 9§;
            §§goto(addr154);
         }
         return §§pop();
      }
      
      public function §=f§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §>z§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §^!3§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §]?§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            mClip.gotoAndStop(param1);
            this.§9;§ = param1;
         }
         this.§`!C§ = param1;
         this.§ 9§ = mClip.currentFrame;
         if(_loc3_ || _loc2_)
         {
            this.§8N§ = mClip.currentFrame;
         }
         this.§?z§ = mClip.currentFrame * § !-§;
      }
      
      public function § b§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §!U§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §^[§() : Boolean
      {
         return this.§=l§;
      }
      
      public function set §^[§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§=l§ = param1;
         }
      }
   }
}
