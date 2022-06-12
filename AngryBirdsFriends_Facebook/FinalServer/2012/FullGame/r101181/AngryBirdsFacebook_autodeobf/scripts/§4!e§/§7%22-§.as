package §4!e§
{
   import §2!i§.§=!&§;
   import flash.display.MovieClip;
   
   public class §7"-§ extends §=!&§
   {
      
      private static const §'!'§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §7"-§)
         {
            §'!'§ = 1000 / 60;
         }
      }
      
      private var §#"-§:String;
      
      private var §,!j§:String;
      
      private var §[c§:int = 0;
      
      private var §&"B§:int = 0;
      
      private var §>!u§:Number = 0;
      
      private var §%w§:Boolean = false;
      
      public function §7"-§(param1:XML, param2:§08§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §&!q§(param1:Number) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_ || _loc3_)
         {
            §§push(this);
            §§push(this.§>!u§);
            if(!_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§>!u§ = §§pop();
            if(_loc6_)
            {
               §§push(this);
               §§push(this.§>!u§);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() / §'!'§);
               }
               §§pop().§&"B§ = §§pop();
            }
         }
         loop0:
         while(true)
         {
            if(this.§[c§ >= this.§&"B§)
            {
               loop2:
               while(!_loc5_)
               {
                  this.§[c§ = this.§&"B§;
                  while(_loc6_)
                  {
                     if(!_loc6_)
                     {
                        this.§#"-§ = mClip.currentLabel;
                        break;
                     }
                     addr189:
                     this.§,!j§ = this.§#"-§;
                     if(!_loc6_)
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        continue loop2;
                     }
                     if(!_loc5_)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           §§push(_loc2_);
                           if(!(_loc5_ && this))
                           {
                              if(_loc6_)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    break loop0;
                                 }
                                 addr171:
                                 if(§§pop() == this.§,!j§)
                                 {
                                    continue loop0;
                                 }
                                 addr174:
                                 §§push(this.§#"-§);
                              }
                              §§push(§§pop());
                           }
                           _loc2_ = §§pop();
                           while(true)
                           {
                              this.§&"B§ = this.§[c§;
                              addr167:
                              while(true)
                              {
                                 this.§>!u§ = this.§&"B§ * §'!'§;
                                 break loop2;
                              }
                              break loop2;
                           }
                           addr161:
                           continue loop0;
                           addr178:
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr167);
                  }
                  §§goto(addr171);
                  §§push(this.§#"-§);
               }
               while(true)
               {
                  if(_loc5_ && _loc2_)
                  {
                     §§goto(addr178);
                  }
               }
            }
            else
            {
               var _loc3_:*;
               §§push((_loc3_ = this).§[c§);
               if(!_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(!_loc5_)
               {
                  _loc3_.§[c§ = _loc4_;
               }
               if(_loc6_)
               {
                  mClip.gotoAndStop(this.§[c§);
                  §§goto(addr189);
               }
            }
            §§goto(addr161);
         }
         return §§pop();
      }
      
      public function §-Q§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §'!D§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §4" §(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §2!H§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            mClip.gotoAndStop(param1);
            while(true)
            {
               this.§#"-§ = param1;
               addr95:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               this.§[c§ = mClip.currentFrame;
               loop4:
               for(; _loc2_ || param1; this.§>!u§ = mClip.currentFrame * §'!'§,if(_loc2_ || _loc2_)
               {
                  return;
               })
               {
                  addr65:
                  if(_loc2_ || _loc2_)
                  {
                     continue;
                  }
                  addr107:
                  while(true)
                  {
                     this.§&"B§ = mClip.currentFrame;
                     break loop4;
                     §§goto(addr65);
                  }
               }
               while(!(_loc3_ && _loc3_))
               {
                  §§goto(addr95);
                  §§goto(addr58);
               }
               addr58:
               while(true)
               {
                  this.§,!j§ = param1;
                  §§goto(addr107);
                  §§goto(addr88);
               }
               addr88:
               addr112:
            }
         }
         §§goto(addr112);
      }
      
      public function §6"?§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §+0§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §5%§() : Boolean
      {
         return this.§%w§;
      }
      
      public function set §5%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§%w§ = param1;
         }
      }
   }
}
