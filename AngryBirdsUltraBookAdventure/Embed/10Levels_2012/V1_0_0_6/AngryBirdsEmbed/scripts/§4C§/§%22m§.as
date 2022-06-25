package §4C§
{
   import §`!0§.§[4§;
   import flash.display.MovieClip;
   
   public class §"m§ extends §[4§
   {
      
      private static const §;E§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §;E§ = 1000 / 60;
         }
      }
      
      private var §&!1§:String;
      
      private var §!O§:String;
      
      private var §+]§:int = 0;
      
      private var §,!=§:int = 0;
      
      private var §%_§:Number = 0;
      
      private var §'S§:Boolean = false;
      
      public function §"m§(param1:XML, param2:§1!=§, param3:MovieClip = null)
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
      
      public function §>P§(param1:Number) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_ || param1)
         {
            §§push(this);
            §§push(this.§%_§);
            if(_loc6_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§%_§ = §§pop();
            if(_loc6_)
            {
               §§push(this);
               §§push(this.§%_§);
               if(!_loc5_)
               {
                  §§push(§§pop() / §;E§);
               }
               §§pop().§,!=§ = §§pop();
            }
         }
         while(this.§+]§ < this.§,!=§)
         {
            var _loc3_:*;
            §§push((_loc3_ = this).§+]§);
            if(_loc6_)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(!(_loc5_ && _loc2_))
            {
               _loc3_.§+]§ = _loc4_;
            }
            if(_loc6_ || _loc3_)
            {
               mClip.gotoAndStop(this.§+]§);
               this.§&!1§ = mClip.currentLabel;
               if(!(_loc6_ || _loc3_))
               {
                  continue;
               }
               §§push(this.§&!1§);
               if(!_loc5_)
               {
                  if(§§pop() == this.§!O§)
                  {
                     continue;
                  }
                  §§push(this.§&!1§);
                  if(_loc6_ || this)
                  {
                     §§push(§§pop());
                     if(_loc6_ || param1)
                     {
                        addr123:
                        _loc2_ = §§pop();
                        if(!(_loc5_ && param1))
                        {
                           this.§,!=§ = this.§+]§;
                           if(!_loc5_)
                           {
                              this.§%_§ = this.§,!=§ * §;E§;
                              if(!(_loc6_ || _loc3_))
                              {
                                 break;
                              }
                              continue;
                           }
                           addr180:
                           §§push(_loc2_);
                        }
                        §§goto(addr180);
                     }
                     return §§pop();
                  }
               }
               §§goto(addr123);
            }
            §§goto(addr180);
         }
         this.§+]§ = this.§,!=§;
         if(_loc6_ || _loc2_)
         {
            this.§!O§ = this.§&!1§;
         }
         §§goto(addr180);
      }
      
      public function §##§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §=,§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §#P§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §[!I§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         mClip.gotoAndStop(param1);
         this.§&!1§ = param1;
         if(!(_loc3_ && this))
         {
            this.§!O§ = param1;
            this.§,!=§ = mClip.currentFrame;
            this.§+]§ = mClip.currentFrame;
            if(!_loc3_)
            {
               addr52:
               this.§%_§ = mClip.currentFrame * §;E§;
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §,u§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §[B§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §'I§() : Boolean
      {
         return this.§'S§;
      }
      
      public function set §'I§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'S§ = param1;
         }
      }
   }
}
