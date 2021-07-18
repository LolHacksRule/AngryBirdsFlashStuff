package §-!"§
{
   import §<N§.§'M§;
   import §^V§.§4!H§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §>!W§ extends §=p§
   {
      
      public static const §@o§:String = "load";
      
      public static var §3P§:uint = 4000;
       
      
      private var §>!_§:Boolean = false;
      
      private var §while§:uint;
      
      private var §'!R§:Boolean = false;
      
      public var §6X§:XML;
      
      public var §,!Y§:XML;
      
      public var §+!E§:DisplayObjectContainer;
      
      private var §2Q§:String;
      
      private var §'!G§:String;
      
      public function §>!W§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§2Q§ = param4;
         this.§'!G§ = param5;
         super(param1,param2);
         §0!L§ = true;
         §3P§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §4!H§.init(§6"§("connectionProfileId"));
         if(!§'M§.§ s§.§<p§())
         {
            §'M§.§ s§.init(§4!H§.§`l§(),this.§2Q§,this.§'!G§,null);
         }
         §2[§(true);
      }
      
      public function §&G§(param1:DisplayObjectContainer) : void
      {
         this.§+!E§ = param1;
      }
      
      public function §4!S§(param1:XML) : void
      {
         this.§6X§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §;=§.addChild(this.§+!E§);
         this.setLoadingPercentage(0);
         this.§while§ = getTimer();
      }
      
      private function §'!S§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§'M§.§ s§.§+!H§())
         {
            for each(_loc1_ in this.§6X§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §'M§.§ s§.§;n§(_loc1_);
               }
            }
            for each(_loc1_ in this.§6X§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §'M§.§ s§.§;n§(_loc1_);
               }
            }
            for each(_loc2_ in this.§6X§.packages.pack)
            {
               §'M§.§ s§.§;n§(_loc2_);
            }
            §'M§.§ s§.§-l§(this.§#!§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=p§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§'!R§ && this.§'!S§())
         {
            this.§'!R§ = true;
         }
         var _loc3_:Number = Math.min(1,§'M§.§ s§.§#!0§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§while§) / §3P§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§'M§.§ s§.§#!0§() >= 1)
         {
            §'M§.§ s§.§ _§();
            return §=p§.STATE_STATUS_COMPLETED;
         }
         return §=p§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §;=§.removeChild(this.§+!E§);
         this.§+!E§ = null;
         super.cleanup();
      }
      
      private function §#!§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§+!E§)
         {
            this.§+!E§.x = param1 - this.§+!E§.width >> 1;
            this.§+!E§.y = param2 - this.§+!E§.height >> 1;
         }
      }
   }
}
