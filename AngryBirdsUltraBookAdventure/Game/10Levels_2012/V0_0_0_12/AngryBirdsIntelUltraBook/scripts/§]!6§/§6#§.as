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
         if(_loc2_ || _loc2_)
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
      
      public function §4W§(param1:Number) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         if(!(_loc5_ && param1))
         {
            §§push(this);
            §§push(this.§[b§);
            if(_loc6_ || param1)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§[b§ = §§pop();
            if(!(_loc5_ && _loc3_))
            {
               addr47:
               §§push(this);
               §§push(this.§[b§);
               if(_loc6_)
               {
                  §§push(§§pop() / §&;§);
               }
               §§pop().§<y§ = §§pop();
            }
            loop0:
            while(true)
            {
               if(this.§=H§ >= this.§<y§)
               {
                  if(!_loc5_)
                  {
                     if(_loc6_ || _loc2_)
                     {
                        this.§=H§ = this.§<y§;
                        for(; _loc6_; this.§>h§ = this.§9!,§,if(_loc6_)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              §§push(_loc2_);
                              if(_loc6_ || param1)
                              {
                                 if(!_loc5_)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr194);
                           }
                           addr161:
                           continue loop0;
                        })
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              if(_loc6_)
                              {
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                                 addr193:
                                 addr194:
                                 addr202:
                                 §§push(this.§9!,§);
                                 if(!(_loc5_ && param1))
                                 {
                                    if(§§pop() == this.§>h§)
                                    {
                                       continue loop0;
                                    }
                                    addr191:
                                    §§push(this.§9!,§);
                                 }
                                 _loc2_ = §§pop();
                                 this.§<y§ = this.§=H§;
                                 break;
                                 addr195:
                              }
                              §§goto(addr191);
                           }
                           §§goto(addr195);
                        }
                        this.§[b§ = this.§<y§ * §&;§;
                        §§goto(addr161);
                        addr139:
                     }
                     else
                     {
                        this.§9!,§ = mClip.currentLabel;
                        addr209:
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr139);
               }
               else
               {
                  var _loc3_:*;
                  §§push((_loc3_ = this).§=H§);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc4_:* = §§pop();
                  if(_loc6_)
                  {
                     _loc3_.§=H§ = _loc4_;
                  }
                  if(!_loc5_)
                  {
                     mClip.gotoAndStop(this.§=H§);
                  }
               }
               §§goto(addr209);
            }
            return §§pop();
         }
         §§goto(addr47);
      }
      
      public function §?i§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §-!#§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §]!T§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §;!G§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.gotoAndStop(param1);
            while(true)
            {
               this.§9!,§ = param1;
               loop1:
               while(!(_loc3_ && _loc3_))
               {
                  this.§>h§ = param1;
                  do
                  {
                     this.§<y§ = mClip.currentFrame;
                     while(_loc2_ || _loc2_)
                     {
                        this.§=H§ = mClip.currentFrame;
                        do
                        {
                           this.§[b§ = mClip.currentFrame * §&;§;
                        }
                        while(!_loc2_);
                        
                        if(!(_loc2_ || param1))
                        {
                           continue;
                        }
                        §§goto(addr51);
                     }
                     continue loop1;
                  }
                  while(!_loc2_);
                  
                  return;
               }
            }
         }
         §§goto(addr53);
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§,`§ = param1;
         }
      }
   }
}
