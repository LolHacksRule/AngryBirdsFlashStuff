package §4!H§
{
   import §&X§.§return§;
   import §<[§.§[!#§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §6t§ extends §[4§
   {
      
      public static const §`O§:String = "load";
      
      public static var §=o§:uint = 4000;
       
      
      private var §+q§:Boolean = false;
      
      private var §^!L§:uint;
      
      private var §?,§:Boolean = false;
      
      public var §%!I§:XML;
      
      public var §1e§:XML;
      
      public var §-=§:DisplayObjectContainer;
      
      private var §8R§:String;
      
      private var §!k§:String;
      
      public function §6t§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§8R§ = param4;
         this.§!k§ = param5;
         super(param1,param2);
         §2!@§ = true;
         §=o§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §[!#§.init(§59§("connectionProfileId"));
         if(!§return§.§-!U§.§?%§())
         {
            §return§.§-!U§.init(§[!#§.§=S§(),this.§8R§,this.§!k§,null);
         }
         §81§(true);
      }
      
      public function §-!S§(param1:DisplayObjectContainer) : void
      {
         this.§-=§ = param1;
      }
      
      public function §?v§(param1:XML) : void
      {
         this.§%!I§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §=!<§.addChild(this.§-=§);
         this.§!<§(0);
         this.§^!L§ = getTimer();
      }
      
      private function §6u§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§return§.§-!U§.§8C§())
         {
            for each(_loc1_ in this.§%!I§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §return§.§-!U§.§]6§(_loc1_);
               }
            }
            for each(_loc2_ in this.§%!I§.packages.pack)
            {
               §return§.§-!U§.§]6§(_loc2_);
            }
            §return§.§-!U§.§0!F§(this.§<!R§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §[4§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§?,§ && this.§6u§())
         {
            this.§?,§ = true;
         }
         var _loc3_:Number = Math.min(1,§return§.§-!U§.§7A§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§^!L§) / §=o§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.§!<§(_loc5_);
         if(§return§.§-!U§.§7A§() >= 1)
         {
            §return§.§-!U§.§5U§();
            return §[4§.STATE_STATUS_COMPLETED;
         }
         return §[4§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §=!<§.removeChild(this.§-=§);
         this.§-=§ = null;
         super.cleanup();
      }
      
      private function §<!R§() : void
      {
      }
      
      public function §!<§(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.§-=§.getChildByName("Bar") as MovieClip).totalFrames;
         (this.§-=§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
