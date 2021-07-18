package §?z§
{
   import §1!`§.§8!s§;
   import §;0§.§6h§;
   import §@g§.§;!5§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §%r§ extends §4!C§
   {
      
      public static const §-!q§:String = "load";
      
      public static var §=]§:uint = 4000;
       
      
      private var §<o§:Boolean = false;
      
      private var §?[§:uint;
      
      private var §;!F§:Boolean = false;
      
      public var §,#§:XML;
      
      public var §>!E§:XML;
      
      public var §%0§:DisplayObjectContainer;
      
      protected var §-!e§:String;
      
      protected var §]!V§:String;
      
      private var §9!_§:Boolean = false;
      
      public function §%r§(param1:§6h§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§-!e§ = param5;
         this.§]!V§ = param6;
         super(param2,param3,param1);
         §4!R§ = true;
         §=]§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §8!s§.init(§7X§("connectionProfileId"));
         if(!§;!5§.§2Z§.§8q§())
         {
            this.§'o§();
         }
         §^?§(true);
      }
      
      protected function §'o§() : void
      {
         §;!5§.§2Z§.init(§8!s§.§3!b§(),this.§-!e§,this.§]!V§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§%0§ = param1;
      }
      
      public function §6!o§(param1:XML) : void
      {
         this.§,#§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §#e§.addChild(this.§%0§);
         this.setLoadingPercentage(0);
         this.§?[§ = getTimer();
      }
      
      private function §8b§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§;!5§.§2Z§.§6S§())
         {
            for each(_loc1_ in this.§,#§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §;!5§.§2Z§.§>!&§(_loc1_);
               }
            }
            for each(_loc1_ in this.§,#§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §;!5§.§2Z§.§>!&§(_loc1_);
               }
            }
            for each(_loc2_ in this.§,#§.packages.pack)
            {
               §;!5§.§2Z§.§>!&§(_loc2_);
            }
            §;!5§.§2Z§.§>!]§(this.§!$§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§;!F§ && this.§8b§())
         {
            this.§;!F§ = true;
         }
         var _loc2_:Number = Math.min(1,§;!5§.§2Z§.§=!H§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§?[§) / §=]§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§9!_§ && §;!5§.§2Z§.§=!H§() >= 1)
         {
            §;!5§.§2Z§.§""0§();
            this.§,E§();
         }
      }
      
      protected function §,E§() : void
      {
         this.§9!_§ = true;
         §<f§(§9!T§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§9!_§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §#e§.removeChild(this.§%0§);
         this.§%0§ = null;
         super.cleanup();
      }
      
      private function §!$§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§%0§)
         {
            this.§%0§.x = param1 - this.§%0§.width >> 1;
            this.§%0§.y = param2 - this.§%0§.height >> 1;
         }
      }
   }
}
