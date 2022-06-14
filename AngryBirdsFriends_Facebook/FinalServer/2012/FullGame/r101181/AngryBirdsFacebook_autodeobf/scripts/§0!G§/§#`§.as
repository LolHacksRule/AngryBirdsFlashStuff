package §0!G§
{
   import § "C§.§2"=§;
   import §?" §.§=!L§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §#`§ extends §1-§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §8"!§:uint = 4000;
       
      
      private var §?!`§:Boolean = false;
      
      private var § 3§:uint;
      
      private var §9=§:Boolean = false;
      
      public var §^1§:XML;
      
      public var §&j§:XML;
      
      public var §"">§:DisplayObjectContainer;
      
      private var §>!?§:String;
      
      private var §;!k§:String;
      
      public function §#`§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§>!?§ = param4;
         this.§;!k§ = param5;
         super(param1,param2);
         §=&§ = true;
         §8"!§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §2"=§.init(§5t§("connectionProfileId"));
         if(!§=!L§.§;"§.§6j§())
         {
            §=!L§.§;"§.init(§2"=§.§0!,§(),this.§>!?§,this.§;!k§,null);
         }
         §[#§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§"">§ = param1;
      }
      
      public function § "-§(param1:XML) : void
      {
         this.§^1§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §3^§.addChild(this.§"">§);
         this.setLoadingPercentage(0);
         this.§ 3§ = getTimer();
      }
      
      private function §%D§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§=!L§.§;"§.§%!D§())
         {
            for each(_loc1_ in this.§^1§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §=!L§.§;"§.§+9§(_loc1_);
               }
            }
            for each(_loc1_ in this.§^1§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §=!L§.§;"§.§+9§(_loc1_);
               }
            }
            for each(_loc2_ in this.§^1§.packages.pack)
            {
               §=!L§.§;"§.§+9§(_loc2_);
            }
            §=!L§.§;"§.§@j§(this.§<"A§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§9=§ && this.§%D§())
         {
            this.§9=§ = true;
         }
         var _loc3_:Number = Math.min(1,§=!L§.§;"§.§-!y§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§ 3§) / §8"!§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§=!L§.§;"§.§-!y§() >= 1)
         {
            §=!L§.§;"§.§5l§();
            return §1-§.STATE_STATUS_COMPLETED;
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §3^§.removeChild(this.§"">§);
         this.§"">§ = null;
         super.cleanup();
      }
      
      private function §<"A§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§"">§)
         {
            this.§"">§.x = param1 - this.§"">§.width >> 1;
            this.§"">§.y = param2 - this.§"">§.height >> 1;
         }
      }
   }
}
