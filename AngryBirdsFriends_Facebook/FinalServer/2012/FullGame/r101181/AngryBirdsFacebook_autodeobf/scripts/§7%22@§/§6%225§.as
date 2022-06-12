package §7"@§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §6"5§ extends §1-§
   {
      
      public static const STATE_NAME:String = "FlashGoes11State";
      
      public static const §7!7§:Number = 6000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            STATE_NAME = "FlashGoes11State";
            do
            {
               §7!7§ = 6000;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private var §,1§:Number = -1;
      
      private var §,s§:MovieClip = null;
      
      public function §6"5§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.init();
         }
         while(true)
         {
            §6w§ = new §7!A§(this);
            while(_loc1_ || this)
            {
               §6w§.init(§ "A§.§4[§.Views.View_FlashGoes11[0]);
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.activate();
         }
         var _loc1_:Class = §8B§.§6"C§("MovieClip_Animation");
         if(!_loc3_)
         {
            this.§,s§ = new _loc1_();
            if(_loc4_)
            {
               §6w§.addChild(this.§,s§);
               if(!(_loc3_ && _loc3_))
               {
                  this.§,s§.scaleX = this.§,s§.scaleY = 1.3;
                  if(_loc4_)
                  {
                     this.§,s§.x = (1024 - 1024 * 1.3) / 2;
                  }
                  return;
                  addr97:
               }
            }
            do
            {
               this.§,s§.y = (768 - 768 * 1.3) / 2;
               do
               {
                  this.§,1§ = getTimer();
               }
               while(!_loc4_);
               
            }
            while(_loc3_ && _loc3_);
            
         }
         §§goto(addr97);
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
         if(_loc3_ || param1)
         {
            §§push(_loc2_);
            if(_loc3_ || this)
            {
               if(§§pop() == §1-§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     if(this.§,s§.currentFrame == this.§,s§.totalFrames)
                     {
                        while(_loc3_ || param1)
                        {
                           mNextState = §#;§.STATE_NAME;
                           while(true)
                           {
                           }
                        }
                        continue;
                        addr87:
                     }
                     for(; mNextState.length > 0; §§goto(addr98))
                     {
                        if(!_loc3_)
                        {
                           if(_loc3_ || this)
                           {
                              break;
                           }
                           addr110:
                           return _loc2_;
                        }
                        if(_loc4_)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           return §1-§.STATE_STATUS_COMPLETED;
                        }
                        §§goto(addr87);
                     }
                     return §1-§.STATE_STATUS_RUNNING;
                  }
               }
            }
            §§goto(addr110);
         }
         §§goto(addr98);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param3))
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr60:
               §§push(0);
               if(_loc5_ && this)
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
                  mNextState = StatePlay.STATE_NAME;
                  if(!_loc5_)
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
