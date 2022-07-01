package §3[§
{
   import § i§.§'V§;
   import §^!D§.§;^§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §6S§ extends §0!K§
   {
      
      public static const §]"2§:String = "load";
      
      public static var §7s§:uint = 4000;
       
      
      private var §0!D§:Boolean = false;
      
      private var §6!l§:uint;
      
      private var §[^§:Boolean = false;
      
      public var §`%§:XML;
      
      public var §-!U§:XML;
      
      public var §!"-§:DisplayObjectContainer;
      
      private var §9#§:String;
      
      private var §>"§:String;
      
      public function §6S§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§9#§ = param4;
         this.§>"§ = param5;
         super(param1,param2);
         §7"-§ = true;
         §7s§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §'V§.init(§ !U§("connectionProfileId"));
         if(!§;^§.§,l§.§#!6§())
         {
            §;^§.§,l§.init(§'V§.§#c§(),this.§9#§,this.§>"§,null);
         }
         §7!b§(true);
      }
      
      public function § 6§(param1:DisplayObjectContainer) : void
      {
         this.§!"-§ = param1;
      }
      
      public function §?!e§(param1:XML) : void
      {
         this.§`%§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §;!E§.addChild(this.§!"-§);
         this.setLoadingPercentage(0);
         this.§6!l§ = getTimer();
      }
      
      private function §if §() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§;^§.§,l§.§[x§())
         {
            for each(_loc1_ in this.§`%§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §;^§.§,l§.§%A§(_loc1_);
               }
            }
            for each(_loc1_ in this.§`%§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §;^§.§,l§.§%A§(_loc1_);
               }
            }
            for each(_loc2_ in this.§`%§.packages.pack)
            {
               §;^§.§,l§.§%A§(_loc2_);
            }
            §;^§.§,l§.§6i§(this.§ !k§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§[^§ && this.§if §())
         {
            this.§[^§ = true;
         }
         var _loc3_:Number = Math.min(1,§;^§.§,l§.§&!X§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§6!l§) / §7s§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§;^§.§,l§.§&!X§() >= 1)
         {
            §;^§.§,l§.§5!I§();
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §;!E§.removeChild(this.§!"-§);
         this.§!"-§ = null;
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
         if(this.§!"-§)
         {
            this.§!"-§.x = param1 - this.§!"-§.width >> 1;
            this.§!"-§.y = param2 - this.§!"-§.height >> 1;
         }
      }
   }
}
