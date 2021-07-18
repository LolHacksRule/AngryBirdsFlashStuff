package §"U§
{
   import §6v§.§@V§;
   import flash.display.MovieClip;
   
   public class §!o§ extends §@V§
   {
      
      private static const §=N§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §=N§ = 1000 / 60;
         }
      }
      
      private var §?L§:String;
      
      private var §"J§:String;
      
      private var §>!H§:int = 0;
      
      private var §;L§:int = 0;
      
      private var §9g§:Number = 0;
      
      private var §;!C§:Boolean = false;
      
      public function §!o§(param1:XML, param2:§[Q§, param3:MovieClip = null)
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §4P§(param1:Number) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_)
         {
            §§push(this);
            §§push(this.§9g§);
            if(_loc6_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§9g§ = §§pop();
            if(!(_loc5_ && this))
            {
               addr37:
               §§push(this);
               §§push(this.§9g§);
               if(_loc6_ || param1)
               {
                  §§push(§§pop() / §=N§);
               }
               §§pop().§;L§ = §§pop();
            }
            loop0:
            while(true)
            {
               if(this.§>!H§ >= this.§;L§)
               {
                  if(_loc6_ || param1)
                  {
                     this.§>!H§ = this.§;L§;
                  }
                  do
                  {
                     this.§"J§ = this.§?L§;
                  }
                  while(!_loc6_);
                  
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               else
               {
                  var _loc3_:*;
                  §§push((_loc3_ = this).§>!H§);
                  if(!(_loc5_ && this))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc4_:* = §§pop();
                  if(!_loc5_)
                  {
                     _loc3_.§>!H§ = _loc4_;
                  }
                  if(_loc6_ || _loc2_)
                  {
                     mClip.gotoAndStop(this.§>!H§);
                  }
                  loop1:
                  while(true)
                  {
                     this.§?L§ = mClip.currentLabel;
                     while(true)
                     {
                        §§push(this.§?L§);
                        if(_loc5_ && _loc3_)
                        {
                           break;
                        }
                        if(§§pop() != this.§"J§)
                        {
                           if(_loc6_)
                           {
                              if(!_loc5_)
                              {
                                 §§push(this.§?L§);
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§push(§§pop());
                                    break;
                                 }
                                 break;
                              }
                              continue loop1;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
               _loc2_ = §§pop();
               do
               {
                  this.§;L§ = this.§>!H§;
                  do
                  {
                     this.§9g§ = this.§;L§ * §=N§;
                  }
                  while(!_loc6_);
                  
               }
               while(_loc5_ && param1);
               
            }
            return §§pop();
         }
         §§goto(addr37);
      }
      
      public function §>[§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §,5§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function § !O§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §4R§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         mClip.gotoAndStop(param1);
         this.§?L§ = param1;
         do
         {
            this.§"J§ = param1;
            this.§;L§ = mClip.currentFrame;
            this.§>!H§ = mClip.currentFrame;
            do
            {
               this.§9g§ = mClip.currentFrame * §=N§;
            }
            while(!(_loc2_ || param1));
            
         }
         while(!(_loc2_ || param1));
         
      }
      
      public function §7u§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §8!;§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §+c§() : Boolean
      {
         return this.§;!C§;
      }
      
      public function set §+c§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§;!C§ = param1;
         }
      }
   }
}
