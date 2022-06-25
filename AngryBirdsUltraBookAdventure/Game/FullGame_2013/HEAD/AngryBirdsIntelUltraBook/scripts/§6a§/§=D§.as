package §6a§
{
   import §0!Q§.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   
   public class §=D§ extends UIComponentInteractiveRovio
   {
      
      private static const §,!F§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,!F§ = 1000 / 60;
         }
      }
      
      private var §-!j§:String;
      
      private var §6T§:String;
      
      private var §&!c§:int = 0;
      
      private var §21§:int = 0;
      
      private var §23§:Number = 0;
      
      private var §3z§:Boolean = false;
      
      public function §=D§(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §+h§(param1:Number) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(!(_loc5_ && param1))
         {
            §§push(this);
            §§push(this.§23§);
            if(_loc6_ || _loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§23§ = §§pop();
            if(!_loc5_)
            {
               §§push(this);
               §§push(this.§23§);
               if(!_loc5_)
               {
                  §§push(§§pop() / §,!F§);
               }
               §§pop().§21§ = §§pop();
            }
         }
         loop0:
         while(true)
         {
            if(this.§&!c§ >= this.§21§)
            {
               loop3:
               while(_loc6_ || _loc3_)
               {
                  if(_loc6_ || _loc3_)
                  {
                     if(!_loc5_)
                     {
                        this.§&!c§ = this.§21§;
                        while(true)
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              continue;
                           }
                           addr207:
                           §§push(this.§-!j§);
                           if(!_loc5_)
                           {
                              if(§§pop() == this.§6T§)
                              {
                                 continue loop0;
                              }
                              addr189:
                              if(!(_loc6_ || param1))
                              {
                                 while(true)
                                 {
                                    this.§-!j§ = mClip.currentLabel;
                                    §§goto(addr207);
                                    §§goto(addr189);
                                 }
                                 addr199:
                                 _loc2_ = §§pop();
                                 while(true)
                                 {
                                    this.§21§ = this.§&!c§;
                                    addr170:
                                    this.§23§ = this.§21§ * §,!F§;
                                    break loop3;
                                 }
                                 continue loop0;
                                 addr200:
                                 addr214:
                              }
                              §§push(this.§-!j§);
                           }
                           §§goto(addr199);
                        }
                     }
                     §§goto(addr189);
                  }
                  §§goto(addr170);
               }
               while(true)
               {
                  if(!(_loc6_ || param1))
                  {
                     §§goto(addr200);
                  }
               }
            }
            else
            {
               var _loc3_:*;
               §§push((_loc3_ = this).§&!c§);
               if(_loc6_ || this)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(!_loc5_)
               {
                  _loc3_.§&!c§ = _loc4_;
               }
               if(!(_loc5_ && this))
               {
                  mClip.gotoAndStop(this.§&!c§);
                  §§goto(addr214);
               }
            }
            §§goto(addr199);
         }
      }
      
      public function §=L§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §,!e§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §1!S§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §`c§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.gotoAndStop(param1);
            while(true)
            {
               this.§-!j§ = param1;
               loop1:
               while(true)
               {
                  this.§6T§ = param1;
                  while(true)
                  {
                     this.§21§ = mClip.currentFrame;
                     while(!(_loc2_ && _loc2_))
                     {
                        continue loop1;
                        this.§&!c§ = mClip.currentFrame;
                        do
                        {
                           this.§23§ = mClip.currentFrame * §,!F§;
                        }
                        while(_loc2_);
                        
                        if(!(_loc2_ && param1))
                        {
                           return;
                           addr52:
                        }
                     }
                  }
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr97);
            }
         }
         §§goto(addr52);
      }
      
      public function §+J§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §2!G§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §?§() : Boolean
      {
         return this.§3z§;
      }
      
      public function set §?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3z§ = param1;
         }
      }
   }
}
