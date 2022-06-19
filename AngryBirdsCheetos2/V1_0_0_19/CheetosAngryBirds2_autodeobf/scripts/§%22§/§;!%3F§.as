package §"§
{
   import §31§.§^!K§;
   import §3@§.§>#§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §;!?§ extends §%!$§
   {
      
      public static const §3!?§:String = "load";
      
      public static var §4!c§:uint = 4000;
       
      
      private var §?![§:Boolean = false;
      
      private var §#M§:uint;
      
      private var §`!K§:Boolean = false;
      
      public var §7!§:XML;
      
      public var §3!0§:XML;
      
      public var §=b§:DisplayObjectContainer;
      
      protected var §1!<§:String;
      
      protected var §,G§:String;
      
      public function §;!?§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§1!<§ = param4;
         this.§,G§ = param5;
         super(param1,param2);
         §2i§ = true;
         §4!c§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §>#§.init(§'!A§("connectionProfileId"));
         if(!§^!K§.§'I§.§-!U§())
         {
            this.§8!b§();
         }
         §>!E§(true);
      }
      
      protected function §8!b§() : void
      {
         §^!K§.§'I§.init(§>#§.§`g§(),this.§1!<§,this.§,G§,null);
      }
      
      public function §=c§(param1:DisplayObjectContainer) : void
      {
         this.§=b§ = param1;
      }
      
      public function §8!-§(param1:XML) : void
      {
         this.§7!§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §8!2§.addChild(this.§=b§);
         this.setLoadingPercentage(0);
         this.§#M§ = getTimer();
      }
      
      private function §@V§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§^!K§.§'I§.§?!+§())
         {
            for each(_loc1_ in this.§7!§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §^!K§.§'I§.§ S§(_loc1_);
               }
            }
            for each(_loc1_ in this.§7!§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §^!K§.§'I§.§ S§(_loc1_);
               }
            }
            for each(_loc2_ in this.§7!§.config.xml)
            {
               §^!K§.§'I§.§ S§(_loc2_);
            }
            for each(_loc3_ in this.§7!§.packages.pack)
            {
               §^!K§.§'I§.§ S§(_loc3_);
            }
            §^!K§.§'I§.§5!S§(this.§4!f§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §%!$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§`!K§ && this.§@V§())
         {
            this.§`!K§ = true;
         }
         var _loc3_:Number = Math.min(1,§^!K§.§'I§.§+!O§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§#M§) / §4!c§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§^!K§.§'I§.§+!O§() >= 1)
         {
            §^!K§.§'I§.§`n§();
            return §%!$§.STATE_STATUS_COMPLETED;
         }
         return §%!$§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §8!2§.removeChild(this.§=b§);
         this.§=b§ = null;
         super.cleanup();
      }
      
      private function §4!f§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§=b§)
         {
            this.§=b§.x = param1 - this.§=b§.width >> 1;
            this.§=b§.y = param2 - this.§=b§.height >> 1;
         }
      }
   }
}
