package §9!5§
{
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §>!0§ extends §?Y§
   {
      
      public static const §?h§:String = "FlashGoes11State";
      
      public static const § !x§:Number = 6000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?h§ = "FlashGoes11State";
         }
         do
         {
            § !x§ = 6000;
         }
         while(_loc1_ && _loc1_);
         
      }
      
      private var §^![§:Number = -1;
      
      private var §8x§:MovieClip = null;
      
      public function §>!0§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
         do
         {
            §5!P§ = new §'!^§(this);
            do
            {
               §5!P§.init(§[!'§.§+@§.Views.View_FlashGoes11[0]);
            }
            while(_loc1_ && _loc1_);
            
         }
         while(_loc1_);
         
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            super.activate();
         }
         var _loc1_:Class = §%!G§.§^!B§("MovieClip_Animation");
         if(!_loc3_)
         {
            this.§8x§ = new _loc1_();
            if(_loc4_ || this)
            {
               §5!P§.addChild(this.§8x§);
               if(_loc4_)
               {
                  this.§8x§.scaleX = this.§8x§.scaleY = 1.3;
                  if(_loc4_ || _loc1_)
                  {
                     this.§8x§.x = (1024 - 1024 * 1.3) / 2;
                     while(true)
                     {
                        this.§8x§.y = (768 - 768 * 1.3) / 2;
                        loop1:
                        while(_loc4_)
                        {
                           while(true)
                           {
                              this.§^![§ = getTimer();
                              if(_loc4_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           return;
                        }
                     }
                  }
               }
               §§goto(addr114);
            }
         }
         §§goto(addr100);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && this))
         {
            §§push(_loc2_);
            if(!(_loc3_ && param1))
            {
               if(§§pop() == §?Y§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     if(this.§8x§.currentFrame == this.§8x§.totalFrames)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           mNextState = §!i§.§?h§;
                        }
                        while(!(_loc3_ && _loc3_))
                        {
                        }
                        continue;
                        addr97:
                     }
                     while(mNextState.length > 0)
                     {
                        if(_loc4_)
                        {
                           return §?Y§.STATE_STATUS_COMPLETED;
                        }
                        if(_loc4_)
                        {
                           addr65:
                           break;
                        }
                        §§goto(addr97);
                     }
                     return §?Y§.STATE_STATUS_RUNNING;
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr65);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr45:
               §§push(0);
               if(!_loc6_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  mNextState = StatePlay.§?h§;
                  if(!_loc5_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr45);
      }
   }
}
