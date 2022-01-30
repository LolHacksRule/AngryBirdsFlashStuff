package §"r§
{
   import § ,§.§>u§;
   import §&M§.§^!A§;
   import §0b§.§;!a§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §'!j§ extends §"j§
   {
      
      public static const §7w§:String = "load";
      
      public static var §0n§:uint = 4000;
       
      
      private var §7"'§:Boolean = false;
      
      private var §[v§:uint;
      
      private var §[q§:Boolean = false;
      
      public var §6k§:XML;
      
      public var §>!c§:XML;
      
      public var §;S§:DisplayObjectContainer;
      
      protected var §-8§:String;
      
      protected var §get §:String;
      
      private var §+b§:Boolean = false;
      
      public function §'!j§(param1:§>u§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§-8§ = param5;
         this.§get § = param6;
         super(param2,param3,param1);
         §^!%§ = true;
         §0n§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §^!A§.init(§-""§("connectionProfileId"));
         if(!§;!a§.§<"5§.§1!<§())
         {
            §;!a§.§<"5§.init(§^!A§.§7!A§(),this.§-8§,this.§get §,null);
         }
         §!S§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§;S§ = param1;
      }
      
      public function §-z§(param1:XML) : void
      {
         this.§6k§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §2!&§.addChild(this.§;S§);
         this.setLoadingPercentage(0);
         this.§[v§ = getTimer();
      }
      
      private function §,x§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§;!a§.§<"5§.§&!1§())
         {
            for each(_loc1_ in this.§6k§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §;!a§.§<"5§.§>?§(_loc1_);
               }
            }
            for each(_loc1_ in this.§6k§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §;!a§.§<"5§.§>?§(_loc1_);
               }
            }
            for each(_loc2_ in this.§6k§.packages.pack)
            {
               §;!a§.§<"5§.§>?§(_loc2_);
            }
            §;!a§.§<"5§.§72§(this.§<!y§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§[q§ && this.§,x§())
         {
            this.§[q§ = true;
         }
         var _loc2_:Number = Math.min(1,§;!a§.§<"5§.§8Q§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§[v§) / §0n§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§+b§ && §;!a§.§<"5§.§8Q§() >= 1)
         {
            §;!a§.§<"5§.§2x§();
            this.§6!S§();
         }
      }
      
      protected function §6!S§() : void
      {
         this.§+b§ = true;
         §?n§(§7!'§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§+b§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §2!&§.removeChild(this.§;S§);
         this.§;S§ = null;
         super.cleanup();
      }
      
      private function §<!y§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§;S§)
         {
            this.§;S§.x = param1 - this.§;S§.width >> 1;
            this.§;S§.y = param2 - this.§;S§.height >> 1;
         }
      }
   }
}
