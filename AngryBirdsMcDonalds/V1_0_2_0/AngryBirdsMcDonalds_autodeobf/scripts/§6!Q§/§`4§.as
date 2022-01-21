package §6!Q§
{
   import §%!F§.§5!j§;
   import §09§.§4!c§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §`4§ extends § !"§
   {
      
      public static const §4D§:String = "load";
      
      public static var §^O§:uint = 4000;
       
      
      private var §#!b§:Boolean = false;
      
      private var §#!k§:uint;
      
      private var §`!`§:Boolean = false;
      
      public var §'1§:XML;
      
      public var §0Z§:XML;
      
      public var §;p§:DisplayObjectContainer;
      
      private var §-!`§:String;
      
      private var §8G§:String;
      
      public function §`4§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§-!`§ = param4;
         this.§8G§ = param5;
         super(param1,param2);
         §5!5§ = true;
         §^O§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §4!c§.init(§'!a§("connectionProfileId"));
         if(!§5!j§.§'!S§.§`9§())
         {
            §5!j§.§'!S§.init(§4!c§.§9!8§(),this.§-!`§,this.§8G§,null);
         }
         §8w§(true);
      }
      
      public function §-x§(param1:DisplayObjectContainer) : void
      {
         this.§;p§ = param1;
      }
      
      public function §[!m§(param1:XML) : void
      {
         this.§'1§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §`n§.addChild(this.§;p§);
         this.setLoadingPercentage(0);
         this.§#!k§ = getTimer();
      }
      
      private function §;!5§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§5!j§.§'!S§.§!7§())
         {
            for each(_loc1_ in this.§'1§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §5!j§.§'!S§.§7!g§(_loc1_);
               }
            }
            for each(_loc1_ in this.§'1§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §5!j§.§'!S§.§7!g§(_loc1_);
               }
            }
            for each(_loc2_ in this.§'1§.packages.pack)
            {
               §5!j§.§'!S§.§7!g§(_loc2_);
            }
            §5!j§.§'!S§.§"F§(this.§"!`§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !"§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§`!`§ && this.§;!5§())
         {
            this.§`!`§ = true;
         }
         var _loc3_:Number = Math.min(1,§5!j§.§'!S§.§^!&§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§#!k§) / §^O§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§5!j§.§'!S§.§^!&§() >= 1)
         {
            §5!j§.§'!S§.§9V§();
            return § !"§.STATE_STATUS_COMPLETED;
         }
         return § !"§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §`n§.removeChild(this.§;p§);
         this.§;p§ = null;
         super.cleanup();
      }
      
      private function §"!`§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§;p§)
         {
            this.§;p§.x = param1 - this.§;p§.width >> 1;
            this.§;p§.y = param2 - this.§;p§.height >> 1;
         }
      }
   }
}
