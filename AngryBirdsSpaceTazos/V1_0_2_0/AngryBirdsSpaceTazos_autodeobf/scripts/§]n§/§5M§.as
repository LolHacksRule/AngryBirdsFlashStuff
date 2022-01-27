package §]n§
{
   import §"!>§.§<!o§;
   import §]!V§.§;!O§;
   import §`"!§.§<t§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §5M§ extends §0!g§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §'" §:uint = 4000;
       
      
      private var §2"3§:Boolean = false;
      
      private var §%W§:uint;
      
      private var §,e§:Boolean = false;
      
      public var §[?§:XML;
      
      public var §^"4§:XML;
      
      public var §'!4§:DisplayObjectContainer;
      
      private var §3">§:String;
      
      private var §5F§:String;
      
      private var §+T§:Boolean = false;
      
      public function §5M§(param1:§<!o§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§3">§ = param5;
         this.§5F§ = param6;
         super(param2,param3,param1);
         §3!v§ = true;
         §'" § = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §<t§.init(§6!9§("connectionProfileId"));
         if(!§;!O§.§<"B§.§<=§())
         {
            §;!O§.§<"B§.init(§<t§.§+Q§(),this.§3">§,this.§5F§,null);
         }
         §'4§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§'!4§ = param1;
      }
      
      public function §>"E§(param1:XML) : void
      {
         this.§[?§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §>#§.addChild(this.§'!4§);
         this.setLoadingPercentage(0);
         this.§%W§ = getTimer();
      }
      
      private function §<"2§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§;!O§.§<"B§.§'!"§())
         {
            for each(_loc1_ in this.§[?§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §;!O§.§<"B§.§4=§(_loc1_);
               }
            }
            for each(_loc1_ in this.§[?§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §;!O§.§<"B§.§4=§(_loc1_);
               }
            }
            for each(_loc2_ in this.§[?§.packages.pack)
            {
               §;!O§.§<"B§.§4=§(_loc2_);
            }
            §;!O§.§<"B§.§%!1§(this.§<O§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§,e§ && this.§<"2§())
         {
            this.§,e§ = true;
         }
         var _loc2_:Number = Math.min(1,§;!O§.§<"B§.§=!2§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§%W§) / §'" §);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§+T§ && §;!O§.§<"B§.§=!2§() >= 1)
         {
            §;!O§.§<"B§.§&v§();
            this.§`X§();
         }
      }
      
      protected function §`X§() : void
      {
         this.§+T§ = true;
         §2g§(§5"#§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§+T§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §>#§.removeChild(this.§'!4§);
         this.§'!4§ = null;
         super.cleanup();
      }
      
      private function §<O§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§'!4§)
         {
            this.§'!4§.x = param1 - this.§'!4§.width >> 1;
            this.§'!4§.y = param2 - this.§'!4§.height >> 1;
         }
      }
   }
}
