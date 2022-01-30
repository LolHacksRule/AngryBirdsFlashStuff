package §>w§
{
   import §%!k§.§=M§;
   import §3&§.§7G§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §=E§ extends §4E§
   {
      
      public static const §#!w§:String = "load";
      
      public static var §1!w§:uint = 4000;
       
      
      private var §9R§:Boolean = false;
      
      private var §^#§:uint;
      
      private var §9!Q§:Boolean = false;
      
      public var § ""§:XML;
      
      public var §!I§:XML;
      
      public var §"!q§:DisplayObjectContainer;
      
      private var §,!L§:String;
      
      private var §6Q§:String;
      
      public function §=E§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§,!L§ = param4;
         this.§6Q§ = param5;
         super(param1,param2);
         §?!i§ = true;
         §1!w§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §=M§.init(§4!c§("connectionProfileId"));
         if(!§7G§.§9j§.§&+§())
         {
            §7G§.§9j§.init(§=M§.§2w§(),this.§,!L§,this.§6Q§,null);
         }
         §[V§(true);
      }
      
      public function §]U§(param1:DisplayObjectContainer) : void
      {
         this.§"!q§ = param1;
      }
      
      public function §0""§(param1:XML) : void
      {
         this.§ ""§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §`!-§.addChild(this.§"!q§);
         this.setLoadingPercentage(0);
         this.§^#§ = getTimer();
      }
      
      private function §65§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§7G§.§9j§.§1R§())
         {
            for each(_loc1_ in this.§ ""§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §7G§.§9j§.§]o§(_loc1_);
               }
            }
            for each(_loc1_ in this.§ ""§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §7G§.§9j§.§]o§(_loc1_);
               }
            }
            for each(_loc2_ in this.§ ""§.packages.pack)
            {
               §7G§.§9j§.§]o§(_loc2_);
            }
            §7G§.§9j§.§-"5§(this.§>2§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§9!Q§ && this.§65§())
         {
            this.§9!Q§ = true;
         }
         var _loc3_:Number = Math.min(1,§7G§.§9j§.§>g§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§^#§) / §1!w§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§7G§.§9j§.§>g§() >= 1)
         {
            §7G§.§9j§.§^!4§();
            return §4E§.STATE_STATUS_COMPLETED;
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §`!-§.removeChild(this.§"!q§);
         this.§"!q§ = null;
         super.cleanup();
      }
      
      private function §>2§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§"!q§)
         {
            this.§"!q§.x = param1 - this.§"!q§.width >> 1;
            this.§"!q§.y = param2 - this.§"!q§.height >> 1;
         }
      }
   }
}
