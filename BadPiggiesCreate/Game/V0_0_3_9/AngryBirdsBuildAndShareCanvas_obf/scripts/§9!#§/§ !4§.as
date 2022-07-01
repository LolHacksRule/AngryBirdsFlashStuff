package §9!#§
{
   import §"h§.§<"+§;
   import §&!&§.§7!8§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   
   public class § !4§ extends §<"+§
   {
      
      public static const §8G§:String = "FeedState";
       
      
      private var §^!]§:Boolean = false;
      
      public function § !4§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§+e§.§=!i§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§^!]§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§8G§;
         }
      }
   }
}
