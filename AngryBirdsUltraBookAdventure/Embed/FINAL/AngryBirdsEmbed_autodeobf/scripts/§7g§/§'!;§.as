package §7g§
{
   import §+F§.§"o§;
   import §6!F§.§9A§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §'!;§ extends §1Q§
   {
      
      public static const §>9§:String = "load";
      
      public static var §true§:uint = 4000;
       
      
      private var §1V§:Boolean = false;
      
      private var §86§:uint;
      
      private var §%o§:Boolean = false;
      
      public var §extends§:XML;
      
      public var §?!H§:XML;
      
      public var §2-§:DisplayObjectContainer;
      
      protected var §+!2§:String;
      
      protected var §1p§:String;
      
      public function §'!;§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§+!2§ = param4;
         this.§1p§ = param5;
         super(param1,param2);
         §>M§ = true;
         §true§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §9A§.init(§'a§("connectionProfileId"));
         if(!§"o§.§@6§.§38§())
         {
            this.§]"§();
         }
         §#!L§(true);
      }
      
      protected function §]"§() : void
      {
         §"o§.§@6§.init(§9A§.§,!5§(),this.§+!2§,this.§1p§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§2-§ = param1;
      }
      
      public function §'!+§(param1:XML) : void
      {
         this.§extends§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §,!7§.addChild(this.§2-§);
         this.setLoadingPercentage(0);
         this.§86§ = getTimer();
      }
      
      private function §9!L§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§"o§.§@6§.§6!§())
         {
            for each(_loc1_ in this.§extends§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §"o§.§@6§.§]<§(_loc1_);
               }
            }
            for each(_loc1_ in this.§extends§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §"o§.§@6§.§]<§(_loc1_);
               }
            }
            for each(_loc2_ in this.§extends§.config.xml)
            {
               §"o§.§@6§.§]<§(_loc2_);
            }
            for each(_loc3_ in this.§extends§.packages.pack)
            {
               §"o§.§@6§.§]<§(_loc3_);
            }
            §"o§.§@6§.§^]§(this.§&t§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1Q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§%o§ && this.§9!L§())
         {
            this.§%o§ = true;
         }
         var _loc3_:Number = Math.min(1,§"o§.§@6§.§;W§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§86§) / §true§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§"o§.§@6§.§;W§() >= 1)
         {
            §"o§.§@6§.§1!8§();
            return §1Q§.STATE_STATUS_COMPLETED;
         }
         return §1Q§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §,!7§.removeChild(this.§2-§);
         this.§2-§ = null;
         super.cleanup();
      }
      
      private function §&t§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§2-§)
         {
            this.§2-§.x = param1 - this.§2-§.width >> 1;
            this.§2-§.y = param2 - this.§2-§.height >> 1;
         }
      }
   }
}
