package §^C§
{
   import §"!G§.§3!f§;
   import §5h§.§-!Q§;
   import §]!5§.§^""§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §>!w§ extends §5!L§
   {
      
      public static const §'u§:String = "load";
      
      public static var §,!U§:uint = 4000;
       
      
      private var §^!m§:Boolean = false;
      
      private var §9!q§:uint;
      
      private var §>g§:Boolean = false;
      
      public var §-S§:XML;
      
      public var §8G§:XML;
      
      public var §6"&§:DisplayObjectContainer;
      
      protected var §+1§:String;
      
      protected var §>X§:String;
      
      private var §6!E§:Boolean = false;
      
      public function §>!w§(param1:§3!f§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§+1§ = param5;
         this.§>X§ = param6;
         super(param2,param3,param1);
         §,!I§ = true;
         §,!U§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §^""§.init(§`y§("connectionProfileId"));
         if(!§-!Q§.§"e§.§%!_§())
         {
            this.§]"+§();
         }
         §-"#§(true);
      }
      
      protected function §]"+§() : void
      {
         §-!Q§.§"e§.init(§^""§.§%W§(),this.§+1§,this.§>X§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§6"&§ = param1;
      }
      
      public function §7K§(param1:XML) : void
      {
         this.§-S§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §[<§.addChild(this.§6"&§);
         this.setLoadingPercentage(0);
         this.§9!q§ = getTimer();
      }
      
      private function §%Z§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§-!Q§.§"e§.§7!f§())
         {
            for each(_loc1_ in this.§-S§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §-!Q§.§"e§.§7l§(_loc1_);
               }
            }
            for each(_loc1_ in this.§-S§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §-!Q§.§"e§.§7l§(_loc1_);
               }
            }
            for each(_loc2_ in this.§-S§.packages.pack)
            {
               §-!Q§.§"e§.§7l§(_loc2_);
            }
            §-!Q§.§"e§.§]"&§(this.§ I§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§>g§ && this.§%Z§())
         {
            this.§>g§ = true;
         }
         var _loc2_:Number = Math.min(1,§-!Q§.§"e§.§'!I§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§9!q§) / §,!U§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§6!E§ && §-!Q§.§"e§.§'!I§() >= 1)
         {
            §-!Q§.§"e§.§!!V§();
            this.§0p§();
         }
      }
      
      protected function §0p§() : void
      {
         this.§6!E§ = true;
         §'"6§(§&v§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§6!E§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §[<§.removeChild(this.§6"&§);
         this.§6"&§ = null;
         super.cleanup();
      }
      
      private function § I§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§6"&§)
         {
            this.§6"&§.x = param1 - this.§6"&§.width >> 1;
            this.§6"&§.y = param2 - this.§6"&§.height >> 1;
         }
      }
   }
}
