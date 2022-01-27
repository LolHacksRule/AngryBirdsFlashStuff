package §6O§
{
   import §""=§.§&!M§;
   import §71§.§;l§;
   import §<[§.§#!4§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §+V§ extends §6!x§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §&I§:uint = 4000;
       
      
      private var §[9§:Boolean = false;
      
      private var §[1§:uint;
      
      private var §2"4§:Boolean = false;
      
      public var §=!G§:XML;
      
      public var §;!R§:XML;
      
      public var §9"6§:DisplayObjectContainer;
      
      private var §6!L§:String;
      
      private var §<1§:String;
      
      private var §5"?§:Boolean = false;
      
      public function §+V§(param1:§;l§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§6!L§ = param5;
         this.§<1§ = param6;
         super(param2,param3,param1);
         §5"-§ = true;
         §&I§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §&!M§.init(§1!6§("connectionProfileId"));
         if(!§#!4§.§8!J§.§]" §())
         {
            §#!4§.§8!J§.init(§&!M§.§5"=§(),this.§6!L§,this.§<1§,null);
         }
         §+!5§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§9"6§ = param1;
      }
      
      public function §^!,§(param1:XML) : void
      {
         this.§=!G§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §9A§.addChild(this.§9"6§);
         this.setLoadingPercentage(0);
         this.§[1§ = getTimer();
      }
      
      private function §6?§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§#!4§.§8!J§.§0!o§())
         {
            for each(_loc1_ in this.§=!G§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §#!4§.§8!J§.§"Q§(_loc1_);
               }
            }
            for each(_loc1_ in this.§=!G§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §#!4§.§8!J§.§"Q§(_loc1_);
               }
            }
            for each(_loc2_ in this.§=!G§.packages.pack)
            {
               §#!4§.§8!J§.§"Q§(_loc2_);
            }
            §#!4§.§8!J§.§%L§(this.§4!C§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§2"4§ && this.§6?§())
         {
            this.§2"4§ = true;
         }
         var _loc2_:Number = Math.min(1,§#!4§.§8!J§.§1]§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§[1§) / §&I§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§5"?§ && §#!4§.§8!J§.§1]§() >= 1)
         {
            §#!4§.§8!J§.§[!4§();
            this.§7"E§();
         }
      }
      
      protected function §7"E§() : void
      {
         this.§5"?§ = true;
         §'Q§(§7!-§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§5"?§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §9A§.removeChild(this.§9"6§);
         this.§9"6§ = null;
         super.cleanup();
      }
      
      private function §4!C§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§9"6§)
         {
            this.§9"6§.x = param1 - this.§9"6§.width >> 1;
            this.§9"6§.y = param2 - this.§9"6§.height >> 1;
         }
      }
   }
}
