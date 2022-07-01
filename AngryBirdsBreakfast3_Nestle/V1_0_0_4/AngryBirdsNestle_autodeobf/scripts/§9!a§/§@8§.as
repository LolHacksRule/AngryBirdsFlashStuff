package §9!a§
{
   import §3"%§.§>K§;
   import §;!b§.§%>§;
   import §@!2§.§2A§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §@8§ extends §@S§
   {
      
      public static const §+B§:String = "load";
      
      public static var §@!j§:uint = 4000;
       
      
      private var §4q§:Boolean = false;
      
      private var §6a§:uint;
      
      private var §<!F§:Boolean = false;
      
      public var §^h§:XML;
      
      public var §!!H§:XML;
      
      public var §'!s§:DisplayObjectContainer;
      
      protected var §2!8§:String;
      
      protected var §>!w§:String;
      
      private var §;!J§:Boolean = false;
      
      public function §@8§(param1:§%>§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§2!8§ = param5;
         this.§>!w§ = param6;
         super(param2,param3,param1);
         §2a§ = true;
         §@!j§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §>K§.init(§`b§("connectionProfileId"));
         if(!§2A§.§?!+§.§;!R§())
         {
            §2A§.§?!+§.init(§>K§.§-b§(),this.§2!8§,this.§>!w§,null);
         }
         §9o§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§'!s§ = param1;
      }
      
      public function §%!F§(param1:XML) : void
      {
         this.§^h§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §]!c§.addChild(this.§'!s§);
         this.setLoadingPercentage(0);
         this.§6a§ = getTimer();
      }
      
      private function §9!;§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§2A§.§?!+§.§;" §())
         {
            for each(_loc1_ in this.§^h§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §2A§.§?!+§.§%R§(_loc1_);
               }
            }
            for each(_loc1_ in this.§^h§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §2A§.§?!+§.§%R§(_loc1_);
               }
            }
            for each(_loc2_ in this.§^h§.packages.pack)
            {
               §2A§.§?!+§.§%R§(_loc2_);
            }
            §2A§.§?!+§.§3O§(this.§'q§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§<!F§ && this.§9!;§())
         {
            this.§<!F§ = true;
         }
         var _loc2_:Number = Math.min(1,§2A§.§?!+§.§+"!§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§6a§) / §@!j§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§;!J§ && §2A§.§?!+§.§+"!§() >= 1)
         {
            §2A§.§?!+§.§1!T§();
            this.§&A§();
         }
      }
      
      protected function §&A§() : void
      {
         this.§;!J§ = true;
         §0!w§(§="$§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§;!J§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §]!c§.removeChild(this.§'!s§);
         this.§'!s§ = null;
         super.cleanup();
      }
      
      private function §'q§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§'!s§)
         {
            this.§'!s§.x = param1 - this.§'!s§.width >> 1;
            this.§'!s§.y = param2 - this.§'!s§.height >> 1;
         }
      }
   }
}
