package §"h§
{
   import §&l§.§'"0§;
   import §5<§.§6",§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §>C§ extends §<"+§
   {
      
      public static const §8G§:String = "load";
      
      public static var §?>§:uint = 4000;
       
      
      private var §9m§:Boolean = false;
      
      private var §&!h§:uint;
      
      private var §0"5§:Boolean = false;
      
      public var §+R§:XML;
      
      public var §0[§:XML;
      
      public var §=!;§:DisplayObjectContainer;
      
      private var §`-§:String;
      
      private var §=6§:String;
      
      public function §>C§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§`-§ = param4;
         this.§=6§ = param5;
         super(param1,param2);
         §8![§ = true;
         §?>§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §6",§.init(§]"$§("connectionProfileId"));
         if(!§'"0§.§'!o§.§-!C§())
         {
            §'"0§.§'!o§.init(§6",§.§>3§(),this.§`-§,this.§=6§,null);
         }
         §^U§(true);
      }
      
      public function §#!C§(param1:DisplayObjectContainer) : void
      {
         this.§=!;§ = param1;
      }
      
      public function §`V§(param1:XML) : void
      {
         this.§+R§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §5H§.addChild(this.§=!;§);
         this.setLoadingPercentage(0);
         this.§&!h§ = getTimer();
      }
      
      private function § 7§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§'"0§.§'!o§.§4s§())
         {
            for each(_loc1_ in this.§+R§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §'"0§.§'!o§.§ F§(_loc1_);
               }
            }
            for each(_loc1_ in this.§+R§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §'"0§.§'!o§.§ F§(_loc1_);
               }
            }
            for each(_loc2_ in this.§+R§.packages.pack)
            {
               §'"0§.§'!o§.§ F§(_loc2_);
            }
            §'"0§.§'!o§.§-"3§(this.§<!m§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§0"5§ && this.§ 7§())
         {
            this.§0"5§ = true;
         }
         var _loc3_:Number = Math.min(1,§'"0§.§'!o§.§#!-§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§&!h§) / §?>§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§'"0§.§'!o§.§#!-§() >= 1)
         {
            §'"0§.§'!o§.§ !M§();
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §5H§.removeChild(this.§=!;§);
         this.§=!;§ = null;
         super.cleanup();
      }
      
      private function §<!m§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§=!;§)
         {
            this.§=!;§.x = param1 - this.§=!;§.width >> 1;
            this.§=!;§.y = param2 - this.§=!;§.height >> 1;
         }
      }
   }
}
