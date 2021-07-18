package §>M§
{
   import §'!D§.§0j§;
   import flash.display.MovieClip;
   
   public class §-!P§ extends §0j§
   {
      
      private static const §#!`§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#!`§ = 1000 / 60;
         }
      }
      
      private var §"w§:String;
      
      private var §+!f§:String;
      
      private var §+f§:int = 0;
      
      private var §<R§:int = 0;
      
      private var §?$§:Number = 0;
      
      private var §]!Y§:Boolean = false;
      
      public function §-!P§(param1:XML, param2:§<6§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §5J§(param1:Number) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(!_loc6_)
         {
            §§push(this);
            §§push(this.§?$§);
            if(!_loc6_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§?$§ = §§pop();
            if(_loc5_ || _loc2_)
            {
               §§push(this);
               §§push(this.§?$§);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() / §#!`§);
               }
               §§pop().§<R§ = §§pop();
            }
         }
         loop0:
         while(true)
         {
            if(this.§+f§ >= this.§<R§)
            {
               if(_loc5_)
               {
                  if(_loc5_)
                  {
                     if(_loc5_)
                     {
                        this.§+f§ = this.§<R§;
                        loop4:
                        while(_loc5_)
                        {
                           this.§+!f§ = this.§"w§;
                           if(_loc6_ && _loc3_)
                           {
                              continue;
                           }
                           §§push(_loc2_);
                           if(_loc5_)
                           {
                              if(!(_loc6_ && this))
                              {
                                 break loop0;
                              }
                              addr170:
                              §§push(§§pop());
                           }
                           addr171:
                           _loc2_ = §§pop();
                           this.§<R§ = this.§+f§;
                           while(true)
                           {
                              this.§?$§ = this.§<R§ * §#!`§;
                              break loop4;
                           }
                           addr139:
                           continue loop0;
                           addr145:
                           addr172:
                        }
                        while(true)
                        {
                           if(_loc6_)
                           {
                              §§goto(addr145);
                           }
                           §§goto(addr139);
                        }
                        addr127:
                     }
                     else
                     {
                        loop2:
                        while(true)
                        {
                           if(_loc6_ && param1)
                           {
                              continue;
                           }
                           if(_loc5_)
                           {
                              §§goto(addr170);
                              §§push(this.§"w§);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§"w§ = mClip.currentLabel;
                                 continue loop2;
                              }
                              addr193:
                           }
                        }
                        §§goto(addr171);
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr172);
               }
               §§goto(addr127);
            }
            else
            {
               var _loc3_:*;
               §§push((_loc3_ = this).§+f§);
               if(_loc5_ || _loc2_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(!_loc6_)
               {
                  _loc3_.§+f§ = _loc4_;
               }
               if(!_loc6_)
               {
                  mClip.gotoAndStop(this.§+f§);
                  §§goto(addr193);
               }
            }
            §§goto(addr188);
         }
         return §§pop();
      }
      
      public function §,t§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §?!U§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §[3§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function § m§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            mClip.gotoAndStop(param1);
            while(true)
            {
               this.§"w§ = param1;
               while(_loc3_)
               {
                  this.§+!f§ = param1;
                  while(_loc3_)
                  {
                     this.§<R§ = mClip.currentFrame;
                     while(true)
                     {
                        this.§+f§ = mClip.currentFrame;
                        §§goto(addr58);
                     }
                  }
               }
            }
         }
         addr58:
         while(true)
         {
            this.§?$§ = mClip.currentFrame * §#!`§;
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  continue loop2;
               }
               continue loop3;
            }
         }
      }
      
      public function §>?§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §1i§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §`!N§() : Boolean
      {
         return this.§]!Y§;
      }
      
      public function set §`!N§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§]!Y§ = param1;
         }
      }
   }
}
