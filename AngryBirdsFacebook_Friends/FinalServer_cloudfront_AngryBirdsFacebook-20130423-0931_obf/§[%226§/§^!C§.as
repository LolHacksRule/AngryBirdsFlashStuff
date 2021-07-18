package §["6§
{
   import §8m§.§@"M§;
   import §@!"§.§?l§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §^!C§
   {
       
      
      private var §>!=§:MovieClip;
      
      private var §%!d§:Array;
      
      public function §^!C§(param1:MovieClip)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
         }
         do
         {
            this.§>!=§ = param1;
         }
         while(_loc2_ && param1);
         
      }
      
      public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §?l§.§ "G§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         do
         {
            this.§%!d§ = [];
         }
         while(!_loc1_);
         
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:MovieClip = null;
         if(!(_loc4_ && _loc2_))
         {
            §?l§.§ "G§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         var _loc3_:* = this.§%!d§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_)
            {
               if(this.§>!=§)
               {
                  if(!(_loc4_ && this))
                  {
                     if(_loc1_.parent != this.§>!=§)
                     {
                        continue;
                     }
                     if(!(_loc5_ || _loc3_))
                     {
                        continue;
                     }
                  }
                  this.§>!=§.removeChild(_loc1_);
               }
            }
         }
         if(!_loc4_)
         {
            this.§%!d§ = [];
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:MovieClip = null;
         var _loc2_:* = int(this.§%!d§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§%!d§[_loc2_];
            if(!(_loc5_ && this))
            {
               if(_loc3_.currentFrame == _loc3_.totalFrames)
               {
                  if(!_loc5_)
                  {
                     this.§%!d§.splice(_loc2_,1);
                  }
                  while(true)
                  {
                     addr72:
                     addr63:
                     while(true)
                     {
                        if(this.§>!=§)
                        {
                           while(true)
                           {
                              if(_loc3_.parent == this.§>!=§)
                              {
                                 while(true)
                                 {
                                    this.§>!=§.removeChild(_loc3_);
                                    addr85:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr81:
                              }
                           }
                           addr76:
                        }
                     }
                     if(_loc5_ && _loc2_)
                     {
                        continue;
                     }
                     while(false)
                     {
                        §§goto(addr72);
                     }
                     continue loop0;
                     addr70:
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        if(!_loc5_)
                        {
                           §§goto(addr63);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr85);
               }
            }
            §§goto(addr70);
         }
         if(_loc4_ || param1)
         {
            if(Math.random() > 0.97)
            {
               if(!_loc5_)
               {
                  this.§<!h§();
               }
            }
         }
      }
      
      public function §<!h§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:int = Math.floor(Math.random() * 4);
         if(_loc6_ || _loc3_)
         {
            _loc1_ = Math.min(_loc1_,3);
         }
         §§push("FireWorks");
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() + (_loc1_ + 1));
         }
         var _loc2_:String = §§pop();
         var _loc3_:Class = §?q§.§ q§(_loc2_);
         var _loc4_:MovieClip;
         (_loc4_ = new _loc3_()).x = Math.random() * this.§>!=§.width;
         if(!_loc5_)
         {
            _loc4_.y = Math.random() * this.§>!=§.height;
         }
         loop0:
         while(true)
         {
            §§push(§@"M§);
            §§push("Sound_Fireworks_Blast");
            if(_loc6_)
            {
               §§push(§§pop() + (_loc1_ + 1));
            }
            §§pop().§3"C§(§§pop());
            while(true)
            {
               this.§>!=§.addChild(_loc4_);
               while(_loc6_ || _loc2_)
               {
                  _loc4_.gotoAndPlay(1);
                  continue loop0;
                  if(!(_loc5_ && _loc1_))
                  {
                     return;
                  }
               }
            }
         }
      }
   }
}
