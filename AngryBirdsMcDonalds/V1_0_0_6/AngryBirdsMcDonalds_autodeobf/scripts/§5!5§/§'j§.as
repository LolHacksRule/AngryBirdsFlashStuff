package §5!5§
{
   import § !Z§.§0V§;
   import §?!d§.§'h§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §'j§ extends §1!b§
   {
      
      public static const §!_§:String = "load";
      
      public static var §&p§:uint = 4000;
       
      
      private var §6!&§:Boolean = false;
      
      private var §&l§:uint;
      
      private var §`d§:Boolean = false;
      
      public var §5!M§:XML;
      
      public var §,!n§:XML;
      
      public var § !9§:DisplayObjectContainer;
      
      private var §3!f§:String;
      
      private var §`!2§:String;
      
      public function §'j§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§3!f§ = param4;
         this.§`!2§ = param5;
         super(param1,param2);
         §#!R§ = true;
         §&p§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §0V§.init(§,t§("connectionProfileId"));
         if(!§'h§.§+j§.§2!;§())
         {
            §'h§.§+j§.init(§0V§.§7h§(),this.§3!f§,this.§`!2§,null);
         }
         §'!c§(true);
      }
      
      public function §0!n§(param1:DisplayObjectContainer) : void
      {
         this.§ !9§ = param1;
      }
      
      public function §@9§(param1:XML) : void
      {
         this.§5!M§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §%!l§.addChild(this.§ !9§);
         this.setLoadingPercentage(0);
         this.§&l§ = getTimer();
      }
      
      private function §7!U§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§'h§.§+j§.§`?§())
         {
            for each(_loc1_ in this.§5!M§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §'h§.§+j§.§0v§(_loc1_);
               }
            }
            for each(_loc1_ in this.§5!M§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §'h§.§+j§.§0v§(_loc1_);
               }
            }
            for each(_loc2_ in this.§5!M§.packages.pack)
            {
               §'h§.§+j§.§0v§(_loc2_);
            }
            §'h§.§+j§.§5!m§(this.§&!a§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!b§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§`d§ && this.§7!U§())
         {
            this.§`d§ = true;
         }
         var _loc3_:Number = Math.min(1,§'h§.§+j§.§-+§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§&l§) / §&p§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§'h§.§+j§.§-+§() >= 1)
         {
            §'h§.§+j§.§@!l§();
            return §1!b§.STATE_STATUS_COMPLETED;
         }
         return §1!b§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §%!l§.removeChild(this.§ !9§);
         this.§ !9§ = null;
         super.cleanup();
      }
      
      private function §&!a§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§ !9§)
         {
            this.§ !9§.x = param1 - this.§ !9§.width >> 1;
            this.§ !9§.y = param2 - this.§ !9§.height >> 1;
         }
      }
   }
}
