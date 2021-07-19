package § §#8
{
   import §%R§.§["N§;
   import §>@§.§5"H§;
   import §`!o§.§6",§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §3Q§ extends §4#`§
   {
      
      public static const §^!7§:String = "load";
      
      public static var §,#;§:uint = 4000;
       
      
      private var §%q§:Boolean = false;
      
      private var §&#Z§:uint;
      
      private var §6"L§:Boolean = false;
      
      public var §&"x§:XML;
      
      public var §<""§:XML;
      
      public var §'#F§:DisplayObjectContainer;
      
      protected var §2e§:String;
      
      protected var §;#[§:String;
      
      private var §7>§:Boolean = false;
      
      public function §3Q§(param1:§5"H§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§2e§ = param5;
         this.§;#[§ = param6;
         super(param2,param3,param1);
         §[L§ = true;
         §,#;§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §6",§.init(§?#>§("connectionProfileId"));
         if(!§["N§.§%!E§.§8!#§())
         {
            this.§8!t§();
         }
         §8"5§(true);
      }
      
      protected function §8!t§() : void
      {
         §["N§.§%!E§.init(§6",§.§<[§(),this.§2e§,this.§;#[§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§'#F§ = param1;
      }
      
      public function §+!^§(param1:XML) : void
      {
         this.§&"x§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §%G§.addChild(this.§'#F§);
         this.setLoadingPercentage(0);
         this.§&#Z§ = getTimer();
      }
      
      private function §'"n§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§["N§.§%!E§.§;r§())
         {
            for each(_loc1_ in this.§&"x§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §["N§.§%!E§.§"#]§(_loc1_);
               }
            }
            for each(_loc1_ in this.§&"x§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §["N§.§%!E§.§"#]§(_loc1_);
               }
            }
            for each(_loc2_ in this.§&"x§.config.xml)
            {
               §["N§.§%!E§.§"#]§(_loc2_);
            }
            for each(_loc3_ in this.§&"x§.packages.pack)
            {
               §["N§.§%!E§.§"#]§(_loc3_);
            }
            §["N§.§%!E§.§,=§(this.§[P§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§6"L§ && this.§'"n§())
         {
            this.§6"L§ = true;
         }
         var _loc2_:Number = Math.min(1,§["N§.§%!E§.§]!c§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§&#Z§) / §,#;§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§7>§ && §["N§.§%!E§.§]!c§() >= 1 && _loc3_ >= 1)
         {
            §["N§.§%!E§.§6q§();
            this.setLoadingReady();
         }
      }
      
      protected function setLoadingReady() : void
      {
         this.§7>§ = true;
         § g§(§"l§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§7>§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §%G§.removeChild(this.§'#F§);
         this.§'#F§ = null;
         super.cleanup();
      }
      
      private function §[P§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§'#F§)
         {
            this.§'#F§.x = param1 - this.§'#F§.width >> 1;
            this.§'#F§.y = param2 - this.§'#F§.height >> 1;
         }
      }
   }
}
