package §?!7§
{
   import §9Y§.§+!!§;
   import flash.display.MovieClip;
   
   public class §[I§ extends §+!!§
   {
      
      private static const §1k§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §1k§ = 1000 / 60;
         }
      }
      
      private var §2!%§:String;
      
      private var §2!k§:String;
      
      private var §;T§:int = 0;
      
      private var §55§:int = 0;
      
      private var §^V§:Number = 0;
      
      private var §1!S§:Boolean = false;
      
      public function §[I§(param1:XML, param2:§8;§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
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
      
      public function §+#§(param1:Number) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(!_loc5_)
         {
            §§push(this);
            §§push(this.§^V§);
            if(!_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§^V§ = §§pop();
            if(!_loc5_)
            {
               §§push(this);
               §§push(this.§^V§);
               if(_loc6_ || param1)
               {
                  §§push(§§pop() / §1k§);
               }
               §§pop().§55§ = §§pop();
            }
         }
         loop0:
         while(true)
         {
            if(this.§;T§ >= this.§55§)
            {
               loop3:
               while(true)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     this.§;T§ = this.§55§;
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           continue;
                        }
                     }
                     addr179:
                     §§push(§§pop());
                     break;
                  }
                  loop5:
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        while(true)
                        {
                           this.§2!%§ = mClip.currentLabel;
                           continue loop5;
                        }
                        addr194:
                     }
                     §§push(this.§2!%§);
                     if(!_loc5_)
                     {
                        if(§§pop() == this.§2!k§)
                        {
                           continue loop0;
                        }
                     }
                     break loop3;
                  }
                  §§goto(addr179);
               }
            }
            else
            {
               var _loc3_:*;
               §§push((_loc3_ = this).§;T§);
               if(_loc6_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(!(_loc5_ && _loc2_))
               {
                  _loc3_.§;T§ = _loc4_;
               }
               if(_loc6_ || _loc2_)
               {
                  mClip.gotoAndStop(this.§;T§);
                  §§goto(addr194);
               }
               else
               {
                  §§goto(addr122);
               }
            }
            _loc2_ = §§pop();
            §§goto(addr181);
         }
         return §§pop();
      }
      
      public function §=!g§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §;t§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §-!H§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §2!?§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.gotoAndStop(param1);
            while(true)
            {
               this.§2!%§ = param1;
               addr93:
               while(true)
               {
                  this.§2!k§ = param1;
               }
            }
            addr97:
         }
         loop2:
         while(true)
         {
            this.§55§ = mClip.currentFrame;
            while(true)
            {
               if(_loc3_ || _loc2_)
               {
                  if(!_loc2_)
                  {
                     if(_loc3_)
                     {
                        this.§;T§ = mClip.currentFrame;
                        continue;
                     }
                     §§goto(addr97);
                  }
                  break;
               }
               continue loop2;
            }
            §§goto(addr93);
         }
      }
      
      public function §!!#§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §1!!§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §;J§() : Boolean
      {
         return this.§1!S§;
      }
      
      public function set §;J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§1!S§ = param1;
         }
      }
   }
}
