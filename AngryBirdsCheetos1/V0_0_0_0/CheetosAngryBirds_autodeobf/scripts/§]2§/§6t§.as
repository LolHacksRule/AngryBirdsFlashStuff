package §]2§
{
   import §[!#§.§6v§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   import §return§.§#!D§;
   
   public class §6t§ extends §[4§
   {
      
      public static const §`O§:String = "load";
      
      public static var §=o§:uint = 4000;
       
      
      private var §+q§:Boolean = false;
      
      private var §^!L§:uint;
      
      private var §?,§:Boolean = false;
      
      public var §%!I§:XML;
      
      public var §1e§:XML;
      
      public var §-=§:DisplayObjectContainer;
      
      private var §8R§:String;
      
      private var §<,§:String;
      
      public function §6t§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§8R§ = param4;
         this.§<,§ = param5;
         super(param1,param2);
         §2!@§ = true;
         §=o§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §6v§.init(§59§("connectionProfileId"));
         if(!§#!D§.§!!L§.§8C§())
         {
            §#!D§.§!!L§.init(§6v§.§&P§(),this.§8R§,this.§<,§,null);
         }
         §81§(true);
      }
      
      public function §-!S§(param1:DisplayObjectContainer) : void
      {
         this.§-=§ = param1;
      }
      
      public function §?v§(param1:XML) : void
      {
         this.§%!I§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §9!A§.addChild(this.§-=§);
         this.§!<§(0);
         this.§^!L§ = getTimer();
      }
      
      private function §6u§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§#!D§.§!!L§.§]6§())
         {
            for each(_loc1_ in this.§%!I§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §#!D§.§!!L§.§0!F§(_loc1_);
               }
            }
            for each(_loc2_ in this.§%!I§.packages.pack)
            {
               §#!D§.§!!L§.§0!F§(_loc2_);
            }
            §#!D§.§!!L§.§#!6§(this.§<!R§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §[4§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§?,§ && this.§6u§())
         {
            this.§?,§ = true;
         }
         var _loc3_:Number = Math.min(1,§#!D§.§!!L§.§;_§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§^!L§) / §=o§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.§!<§(_loc5_);
         if(§#!D§.§!!L§.§;_§() >= 1)
         {
            §#!D§.§!!L§.§7A§();
            return §[4§.STATE_STATUS_COMPLETED;
         }
         return §[4§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §9!A§.removeChild(this.§-=§);
         this.§-=§ = null;
         super.cleanup();
      }
      
      private function §<!R§() : void
      {
      }
      
      public function §!<§(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.§-=§.getChildByName("Bar") as MovieClip).totalFrames;
         (this.§-=§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§-=§)
         {
            this.§-=§.x = param1 - this.§-=§.width >> 1;
            this.§-=§.y = param2 - this.§-=§.height >> 1;
         }
      }
   }
}
