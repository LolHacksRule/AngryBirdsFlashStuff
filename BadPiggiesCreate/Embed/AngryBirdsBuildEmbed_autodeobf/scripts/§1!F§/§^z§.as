package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §5#§.§]]§;
   import §<!<§.§;§;
   import §<!B§.b2Vec2;
   import §=!3§.§;!!§;
   import §>!'§.§<!3§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
   import §`a§.§ !U§;
   import §`a§.§,!-§;
   
   public class §^z§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "SplashScreenState";
       
      
      private var §7!D§:§]]§ = null;
      
      public function §^z§(param1:Boolean = false, param2:String = "SplashScreenState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_SplashScreen[0]);
         this.§7!D§ = new §]]§(§'!V§.§1!2§,"BACKGROUND_RED_FLOWERS",false);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§7j§.§else§)
         {
            §7j§.§else§.start();
         }
         §'!V§.§1!2§.§-I§(true);
         §'!V§.§>_§(this.§7!D§);
         this.§7!D§.init();
      }
      
      protected function getCamera() : §,!-§
      {
         return §'!V§.§1!2§.camera as §,!-§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:§,!-§ = null;
         var _loc11_:§<!3§ = null;
         var _loc12_:Array = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§7!D§.update(param1);
         if(Math.random() * 2000 < param1)
         {
            _loc4_ = -Math.random() * 10 - 10;
            _loc5_ = §;§.§5B§ * (Math.random() * 0.2 + 0.7);
            _loc6_ = 20 + Math.random() * 10;
            _loc7_ = _loc5_ * Math.cos(_loc6_ / 180 * Math.PI);
            _loc8_ = -_loc5_ * Math.sin(_loc6_ / 180 * Math.PI);
            _loc10_ = this.getCamera();
            if(Math.random() > 0.1)
            {
               _loc12_ = ["RED","RED","RED","GREEN","BLUE","BLACK","YELLOW","WHITE"];
               _loc9_ = "BIRD_" + _loc12_[Math.floor(Math.random() * _loc12_.length)];
               _loc3_ = _loc10_.xCenterB2 - § !U§.SCREEN_WIDTH_B2 / 2 - Math.random() * 10;
            }
            else
            {
               _loc9_ = "PIG_BASIC_BIG";
               _loc7_ = -_loc7_;
               _loc3_ = _loc10_.xCenterB2 + § !U§.SCREEN_WIDTH_B2 / 2 + Math.random() * 10;
            }
            (_loc11_ = §'!V§.§1!2§.objects.addObject(_loc9_,_loc3_,_loc4_,0,false)).§`w§(new b2Vec2(_loc7_,_loc8_),false,false);
         }
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "PLAY":
               mNextState = §-G§.STATE_NAME;
         }
      }
   }
}
