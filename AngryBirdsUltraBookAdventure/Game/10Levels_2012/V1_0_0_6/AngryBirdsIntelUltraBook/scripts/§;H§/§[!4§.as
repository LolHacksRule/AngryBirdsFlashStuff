package §;H§
{
   import §+0§.§,!E§;
   import §>7§.§,!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   
   public class §[!4§ extends §,!E§
   {
      
      public static const §"!s§:String = "FeedState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §"!s§ = "FeedState";
         }
      }
      
      private var §%T§:Boolean = false;
      
      public function §[!4§(param1:Boolean = false, param2:String = "FeedState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.init();
            while(true)
            {
               §&!m§ = new §4`§(this);
               while(!_loc1_)
               {
                  §&!m§.init(§ !I§.§3!a§.Views.View_Feed[0]);
                  if(!_loc1_)
                  {
                     return;
                     addr60:
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            if(_loc1_)
            {
               addr22:
               if(§%!R§.§>!B§ != null)
               {
               }
            }
            return;
         }
         §§goto(addr22);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() == §,!E§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(mNextState.length > 0)
                  {
                     if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           return §,!E§.STATE_STATUS_COMPLETED;
                        }
                        addr84:
                        return _loc2_;
                     }
                     if(_loc4_)
                     {
                        break;
                     }
                     while(true)
                     {
                        continue loop0;
                     }
                  }
                  return §,!E§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr84);
         }
         §§goto(addr86);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§%T§ = false;
            do
            {
               super.deActivate();
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param2))
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr59:
               §§push(0);
               if(_loc6_ && param3)
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
                  if(_loc5_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr59);
      }
   }
}
