package §;H§
{
   import §+0§.§,!E§;
   import §>7§.§,!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §5!D§ extends §,!E§
   {
      
      public static const §"!s§:String = "FlashGoes11State";
      
      public static const § p§:Number = 6000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §"!s§ = "FlashGoes11State";
            do
            {
               § p§ = 6000;
            }
            while(!_loc2_);
            
         }
      }
      
      private var §`!N§:Number = -1;
      
      private var §'P§:MovieClip = null;
      
      public function §5!D§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
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
            while(true)
            {
               §&!m§ = new §4`§(this);
               §§goto(addr54);
            }
         }
         addr54:
         while(true)
         {
            §&!m§.init(§ !I§.§3!a§.Views.View_FlashGoes11[0]);
            if(_loc2_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.activate();
         }
         var _loc1_:Class = §`!t§.§=J§("MovieClip_Animation");
         if(_loc4_)
         {
            this.§'P§ = new _loc1_();
            if(!(_loc3_ && this))
            {
               §&!m§.addChild(this.§'P§);
               if(_loc4_)
               {
                  this.§'P§.scaleX = this.§'P§.scaleY = 1.3;
                  if(!_loc3_)
                  {
                     this.§'P§.x = (1024 - 1024 * 1.3) / 2;
                  }
                  loop0:
                  while(true)
                  {
                     this.§'P§.y = (768 - 768 * 1.3) / 2;
                     do
                     {
                        if(!_loc3_)
                        {
                           continue;
                        }
                        continue loop0;
                     }
                     while(this.§`!N§ = getTimer(), _loc3_ && _loc1_);
                     
                  }
               }
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop() != §,!E§.STATE_STATUS_RUNNING)
               {
                  if(_loc3_ || this)
                  {
                     §§goto(addr116);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr117:
                  }
               }
               loop1:
               while(true)
               {
                  if(this.§'P§.currentFrame == this.§'P§.totalFrames)
                  {
                     while(true)
                     {
                        mNextState = §%!R§.§"!s§;
                        addr94:
                        while(!_loc4_)
                        {
                        }
                        continue loop1;
                     }
                     addr90:
                  }
                  while(mNextState.length > 0)
                  {
                     if(!(_loc4_ && this))
                     {
                        if(_loc3_ || this)
                        {
                           return §,!E§.STATE_STATUS_COMPLETED;
                        }
                     }
                     else
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr94);
                  }
                  return §,!E§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr116);
         }
         addr116:
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param1))
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr64:
               §§push(0);
               if(_loc6_ && this)
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
                  mNextState = StatePlay.§"!s§;
                  if(_loc5_ || param1)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr64);
      }
   }
}
