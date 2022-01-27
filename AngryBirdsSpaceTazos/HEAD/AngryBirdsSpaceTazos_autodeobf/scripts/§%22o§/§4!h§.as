package §"o§
{
   import § !"§.§=!%§;
   import §%"%§.§2Z§;
   import §8!i§.§>j§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §4!h§ extends §>!!§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §=u§:uint = 4000;
       
      
      private var §="5§:Boolean = false;
      
      private var §=!X§:uint;
      
      private var §9!G§:Boolean = false;
      
      public var §]!b§:XML;
      
      public var §@§:XML;
      
      public var §?!+§:DisplayObjectContainer;
      
      private var §2""§:String;
      
      private var §4F§:String;
      
      private var §&"A§:Boolean = false;
      
      public function §4!h§(param1:§2Z§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§2""§ = param5;
         this.§4F§ = param6;
         super(param2,param3,param1);
         §-"?§ = true;
         §=u§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §>j§.init(§&4§("connectionProfileId"));
         if(!§=!%§.§3R§.§&!h§())
         {
            §=!%§.§3R§.init(§>j§.§8"%§(),this.§2""§,this.§4F§,null);
         }
         §8b§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§?!+§ = param1;
      }
      
      public function §<"A§(param1:XML) : void
      {
         this.§]!b§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §5"'§.addChild(this.§?!+§);
         this.setLoadingPercentage(0);
         this.§=!X§ = getTimer();
      }
      
      private function §=!#§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§=!%§.§3R§.§9"8§())
         {
            for each(_loc1_ in this.§]!b§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §=!%§.§3R§.§>]§(_loc1_);
               }
            }
            for each(_loc1_ in this.§]!b§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §=!%§.§3R§.§>]§(_loc1_);
               }
            }
            for each(_loc2_ in this.§]!b§.packages.pack)
            {
               §=!%§.§3R§.§>]§(_loc2_);
            }
            §=!%§.§3R§.§]"E§(this.§&!#§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§9!G§ && this.§=!#§())
         {
            this.§9!G§ = true;
         }
         var _loc2_:Number = Math.min(1,§=!%§.§3R§.§0!#§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§=!X§) / §=u§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§&"A§ && §=!%§.§3R§.§0!#§() >= 1)
         {
            §=!%§.§3R§.§%M§();
            this.§<"F§();
         }
      }
      
      protected function §<"F§() : void
      {
         this.§&"A§ = true;
         § !I§(§8!l§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§&"A§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §5"'§.removeChild(this.§?!+§);
         this.§?!+§ = null;
         super.cleanup();
      }
      
      private function §&!#§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§?!+§)
         {
            this.§?!+§.x = param1 - this.§?!+§.width >> 1;
            this.§?!+§.y = param2 - this.§?!+§.height >> 1;
         }
      }
   }
}
