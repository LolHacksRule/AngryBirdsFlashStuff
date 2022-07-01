package §>!5§
{
   import §!l§.§<!"§;
   import §5!8§.§1u§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §>!O§ extends §>!T§
   {
      
      public static const §>H§:String = "load";
      
      public static var §%!-§:uint = 4000;
       
      
      private var §4!2§:Boolean = false;
      
      private var §2t§:uint;
      
      private var §-O§:Boolean = false;
      
      public var §3!U§:XML;
      
      public var §#">§:XML;
      
      public var §#%§:DisplayObjectContainer;
      
      private var §`!!§:String;
      
      private var §'u§:String;
      
      public function §>!O§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§`!!§ = param4;
         this.§'u§ = param5;
         super(param1,param2);
         §4!s§ = true;
         §%!-§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §1u§.init(§&!D§("connectionProfileId"));
         if(!§<!"§.§7!?§.§ w§())
         {
            §<!"§.§7!?§.init(§1u§.§@t§(),this.§`!!§,this.§'u§,null);
         }
         §0!A§(true);
      }
      
      public function §4!m§(param1:DisplayObjectContainer) : void
      {
         this.§#%§ = param1;
      }
      
      public function §=?§(param1:XML) : void
      {
         this.§3!U§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §`B§.addChild(this.§#%§);
         this.setLoadingPercentage(0);
         this.§2t§ = getTimer();
      }
      
      private function §;!h§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§<!"§.§7!?§.§>!A§())
         {
            for each(_loc1_ in this.§3!U§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §<!"§.§7!?§.§=H§(_loc1_);
               }
            }
            for each(_loc1_ in this.§3!U§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §<!"§.§7!?§.§=H§(_loc1_);
               }
            }
            for each(_loc2_ in this.§3!U§.packages.pack)
            {
               §<!"§.§7!?§.§=H§(_loc2_);
            }
            §<!"§.§7!?§.§6"#§(this.§ !k§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§-O§ && this.§;!h§())
         {
            this.§-O§ = true;
         }
         var _loc3_:Number = Math.min(1,§<!"§.§7!?§.§=!N§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§2t§) / §%!-§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§<!"§.§7!?§.§=!N§() >= 1)
         {
            §<!"§.§7!?§.§&!2§();
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §`B§.removeChild(this.§#%§);
         this.§#%§ = null;
         super.cleanup();
      }
      
      private function § !k§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§#%§)
         {
            this.§#%§.x = param1 - this.§#%§.width >> 1;
            this.§#%§.y = param2 - this.§#%§.height >> 1;
         }
      }
   }
}
