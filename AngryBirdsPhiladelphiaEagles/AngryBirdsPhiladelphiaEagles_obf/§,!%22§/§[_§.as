package §,!"§
{
   import §'!O§.§'!#§;
   import §6v§.§`M§;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import com.rovio.assets.§[!D§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §[_§ extends §'!#§
   {
      
      public static const §-A§:String = "FlashGoes11State";
      
      public static const §7Y§:Number = 6000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §[_§))
         {
            §-A§ = "FlashGoes11State";
            do
            {
               §7Y§ = 6000;
            }
            while(!_loc1_);
            
         }
      }
      
      private var §&!9§:Number = -1;
      
      private var §3!Q§:MovieClip = null;
      
      public function §[_§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
         }
         do
         {
            §0q§ = new §`o§(this);
            do
            {
               §0q§.init(§`Z§.§5c§.Views.View_FlashGoes11[0]);
            }
            while(!(_loc2_ || _loc2_));
            
         }
         while(_loc1_ && _loc1_);
         
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.activate();
         }
         var _loc1_:Class = §[!D§.§8!N§("MovieClip_Animation");
         this.§3!Q§ = new _loc1_();
         if(_loc4_)
         {
            §0q§.addChild(this.§3!Q§);
            if(_loc4_ || _loc3_)
            {
               addr53:
               this.§3!Q§.scaleX = this.§3!Q§.scaleY = 1.3;
               this.§3!Q§.x = (1024 - 1024 * 1.3) / 2;
               while(true)
               {
                  this.§3!Q§.y = (768 - 768 * 1.3) / 2;
               }
               addr111:
            }
            while(true)
            {
               this.§&!9§ = getTimer();
               if(_loc3_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr111);
            }
            return;
         }
         §§goto(addr53);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc3_)
         {
            if(§§pop() != §'!#§.STATE_STATUS_RUNNING)
            {
               if(!_loc4_)
               {
                  §§goto(addr81);
               }
            }
            if(this.§3!Q§.currentFrame == this.§3!Q§.totalFrames)
            {
               mNextState = §8j§.§-A§;
            }
            if(mNextState.length > 0)
            {
               return §'!#§.STATE_STATUS_COMPLETED;
            }
            return §'!#§.STATE_STATUS_RUNNING;
         }
         addr81:
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr60:
               §§push(0);
               if(_loc5_)
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
                  mNextState = StatePlay.§-A§;
                  if(!(_loc5_ && param1))
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr60);
      }
   }
}
