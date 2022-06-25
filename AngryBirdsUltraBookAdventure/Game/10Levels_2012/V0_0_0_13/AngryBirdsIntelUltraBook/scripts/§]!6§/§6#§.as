package §]!6§
{
   import §>!-§.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   
   public class §6#§ extends UIComponentInteractiveRovio
   {
      
      private static const §&;§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §6#§)
         {
            §&;§ = 1000 / 60;
         }
      }
      
      private var §9!,§:String;
      
      private var §>h§:String;
      
      private var §=H§:int = 0;
      
      private var §<y§:int = 0;
      
      private var §[b§:Number = 0;
      
      private var §,`§:Boolean = false;
      
      public function §6#§(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §4W§(param1:Number) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(!(_loc6_ && param1))
         {
            §§push(this);
            §§push(this.§[b§);
            if(!_loc6_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§[b§ = §§pop();
            if(!(_loc6_ && this))
            {
               §§push(this);
               §§push(this.§[b§);
               if(!_loc6_)
               {
                  §§push(§§pop() / §&;§);
               }
               §§pop().§<y§ = §§pop();
            }
         }
         loop0:
         while(true)
         {
            if(this.§=H§ >= this.§<y§)
            {
               loop2:
               while(_loc5_ || this)
               {
                  this.§=H§ = this.§<y§;
                  for(; !(_loc6_ && this); this.§>h§ = this.§9!,§,if(_loc5_)
                  {
                     if(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           §§push(_loc2_);
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 break loop0;
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr188);
                        }
                        while(!_loc5_)
                        {
                           §§goto(addr161);
                        }
                        this.§[b§ = this.§<y§ * §&;§;
                        break;
                        addr152:
                     }
                     continue loop2;
                  })
                  {
                     if(!_loc6_)
                     {
                        continue;
                     }
                     addr196:
                     loop9:
                     while(true)
                     {
                        §§push(this.§9!,§);
                        addr158:
                        while(§§pop() != this.§>h§)
                        {
                           while(!(_loc6_ && this))
                           {
                              §§push(this.§9!,§);
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§push(§§pop());
                              }
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 break loop2;
                              }
                           }
                           while(true)
                           {
                              this.§9!,§ = mClip.currentLabel;
                              continue loop9;
                              §§goto(addr161);
                           }
                           addr161:
                        }
                        continue loop0;
                     }
                  }
                  continue loop0;
               }
               while(true)
               {
                  this.§<y§ = this.§=H§;
                  §§goto(addr152);
               }
            }
            else
            {
               var _loc3_:*;
               §§push((_loc3_ = this).§=H§);
               if(_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(_loc5_ || param1)
               {
                  _loc3_.§=H§ = _loc4_;
               }
               if(_loc5_ || _loc3_)
               {
                  mClip.gotoAndStop(this.§=H§);
                  §§goto(addr203);
               }
            }
            §§goto(addr196);
         }
         return §§pop();
      }
      
      public function §?i§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §-!#§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §]!T§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §;!G§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            mClip.gotoAndStop(param1);
         }
         while(true)
         {
            this.§9!,§ = param1;
            loop1:
            while(true)
            {
               this.§>h§ = param1;
               do
               {
                  this.§<y§ = mClip.currentFrame;
                  continue loop1;
               }
               while(_loc2_);
               
               return;
            }
         }
      }
      
      public function § x§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §^=§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get § O§() : Boolean
      {
         return this.§,`§;
      }
      
      public function set § O§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,`§ = param1;
         }
      }
   }
}
