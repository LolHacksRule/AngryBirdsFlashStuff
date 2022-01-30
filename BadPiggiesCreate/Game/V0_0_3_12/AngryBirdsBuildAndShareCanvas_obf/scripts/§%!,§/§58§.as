package §%!,§
{
   import §[8§.§[!`§;
   import §]^§.§0!3§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §58§ extends §,v§
   {
      
      public static const §8n§:String = "load";
      
      public static var §+!+§:uint = 4000;
       
      
      private var §`%§:Boolean = false;
      
      private var §`!x§:uint;
      
      private var §-"?§:Boolean = false;
      
      public var §>5§:XML;
      
      public var §1!9§:XML;
      
      public var §3b§:DisplayObjectContainer;
      
      private var §'![§:String;
      
      private var §1!>§:String;
      
      public function §58§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§'![§ = param4;
         this.§1!>§ = param5;
         super(param1,param2);
         §"!N§ = true;
         §+!+§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §[!`§.init(§ T§("connectionProfileId"));
         if(!§0!3§.§ "!§.§"0§())
         {
            §0!3§.§ "!§.init(§[!`§.§>2§(),this.§'![§,this.§1!>§,null);
         }
         §2""§(true);
      }
      
      public function §3[§(param1:DisplayObjectContainer) : void
      {
         this.§3b§ = param1;
      }
      
      public function §4!@§(param1:XML) : void
      {
         this.§>5§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §+;§.addChild(this.§3b§);
         this.setLoadingPercentage(0);
         this.§`!x§ = getTimer();
      }
      
      private function §,!&§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§0!3§.§ "!§.§4" §())
         {
            for each(_loc1_ in this.§>5§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §0!3§.§ "!§.§?!z§(_loc1_);
               }
            }
            for each(_loc1_ in this.§>5§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §0!3§.§ "!§.§?!z§(_loc1_);
               }
            }
            for each(_loc2_ in this.§>5§.packages.pack)
            {
               §0!3§.§ "!§.§?!z§(_loc2_);
            }
            §0!3§.§ "!§.§0!k§(this.§%!-§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§-"?§ && this.§,!&§())
         {
            this.§-"?§ = true;
         }
         var _loc3_:Number = Math.min(1,§0!3§.§ "!§.§2!D§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§`!x§) / §+!+§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§0!3§.§ "!§.§2!D§() >= 1)
         {
            §0!3§.§ "!§.§,!]§();
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §+;§.removeChild(this.§3b§);
         this.§3b§ = null;
         super.cleanup();
      }
      
      private function §%!-§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§3b§)
         {
            this.§3b§.x = param1 - this.§3b§.width >> 1;
            this.§3b§.y = param2 - this.§3b§.height >> 1;
         }
      }
   }
}
