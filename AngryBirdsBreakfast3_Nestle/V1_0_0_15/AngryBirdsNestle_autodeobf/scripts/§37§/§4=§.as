package §37§
{
   import §"!w§.§6!E§;
   import §,M§.§+f§;
   import §2!&§.§+h§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §4=§ extends §9!c§
   {
      
      public static const §8"%§:String = "load";
      
      public static var §-?§:uint = 4000;
       
      
      private var §4!R§:Boolean = false;
      
      private var §1u§:uint;
      
      private var §false§:Boolean = false;
      
      public var §>!c§:XML;
      
      public var §+&§:XML;
      
      public var §=x§:DisplayObjectContainer;
      
      protected var §4"1§:String;
      
      protected var §?k§:String;
      
      private var §"!l§:Boolean = false;
      
      public function §4=§(param1:§+f§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§4"1§ = param5;
         this.§?k§ = param6;
         super(param2,param3,param1);
         §8!$§ = true;
         §-?§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §+h§.init(§!6§("connectionProfileId"));
         if(!§6!E§.§,2§.§&;§())
         {
            this.§,!,§();
         }
         §`Y§(true);
      }
      
      protected function §,!,§() : void
      {
         §6!E§.§,2§.init(§+h§.§^!W§(),this.§4"1§,this.§?k§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§=x§ = param1;
      }
      
      public function §^'§(param1:XML) : void
      {
         this.§>!c§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&%§.addChild(this.§=x§);
         this.setLoadingPercentage(0);
         this.§1u§ = getTimer();
      }
      
      private function §1!&§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§6!E§.§,2§.§#y§())
         {
            for each(_loc1_ in this.§>!c§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §6!E§.§,2§.§#X§(_loc1_);
               }
            }
            for each(_loc1_ in this.§>!c§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §6!E§.§,2§.§#X§(_loc1_);
               }
            }
            for each(_loc2_ in this.§>!c§.packages.pack)
            {
               §6!E§.§,2§.§#X§(_loc2_);
            }
            §6!E§.§,2§.§&!L§(this.§0!Q§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§false§ && this.§1!&§())
         {
            this.§false§ = true;
         }
         var _loc2_:Number = Math.min(1,§6!E§.§,2§.§#"3§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§1u§) / §-?§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§"!l§ && §6!E§.§,2§.§#"3§() >= 1)
         {
            §6!E§.§,2§.§#!?§();
            this.§7_§();
         }
      }
      
      protected function §7_§() : void
      {
         this.§"!l§ = true;
         §7"6§(§8!w§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§"!l§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §&%§.removeChild(this.§=x§);
         this.§=x§ = null;
         super.cleanup();
      }
      
      private function §0!Q§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§=x§)
         {
            this.§=x§.x = param1 - this.§=x§.width >> 1;
            this.§=x§.y = param2 - this.§=x§.height >> 1;
         }
      }
   }
}
