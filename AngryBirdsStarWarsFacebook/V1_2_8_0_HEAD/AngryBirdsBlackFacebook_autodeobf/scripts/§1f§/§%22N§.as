package §1f§
{
   import §"k§.§&"r§;
   import §"k§.§6!a§;
   import §,!,§.§0!d§;
   import §]Q§.§2T§;
   import flash.display.Sprite;
   
   public class §"N§ extends Sprite
   {
       
      
      protected var §=`§:§=#3§;
      
      protected var §=M§:§&"r§;
      
      protected var §,!t§:Class;
      
      protected var §6"?§:Number;
      
      protected var §[!4§:Number;
      
      protected var §;#7§:§6!a§;
      
      public function §"N§(param1:Number, param2:Number, param3:Class, param4:§&"r§)
      {
         super();
         this.§6"?§ = param1;
         this.§[!4§ = param2;
         this.§,!t§ = param3 || §0!d§;
         this.§=M§ = param4;
         this.init();
      }
      
      protected function init() : void
      {
         this.§=`§ = new §=#3§(this.§6"?§,this.§[!4§,[],this.§,!t§,2,15);
         addChild(this.§=`§.scrollerSprite);
      }
      
      public function showLevelScores(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc4_:§6!a§ = this.§=M§.§[n§(param1,param2,param3);
         this.showScores(_loc4_);
         if(!_loc4_.isLoading)
         {
            _loc4_.loadItems(0,0);
         }
      }
      
      public function showTotalScores(param1:Boolean = false) : void
      {
         var _loc2_:§6!a§ = this.§=M§.getTotalScores();
         this.showScores(_loc2_);
      }
      
      public function showScores(param1:§6!a§) : void
      {
         if(param1 == this.§;#7§)
         {
            return;
         }
         if(this.§;#7§)
         {
            this.§;#7§.removeEventListener(§2T§.§-D§,this.onCurrentScoresDataLoaded);
         }
         this.§;#7§ = param1;
         this.§;#7§.addEventListener(§2T§.§-D§,this.onCurrentScoresDataLoaded);
         this.§=`§.data = this.§;#7§.data;
         if(param1.isLoading)
         {
            this.§%B§(true);
         }
      }
      
      protected function onCurrentScoresDataLoaded(param1:§2T§) : void
      {
         this.§=`§.data = this.§;#7§.data;
         if(!this.§;#7§.isLoading)
         {
            this.§%B§(false);
         }
      }
      
      override public function set height(param1:Number) : void
      {
         this.§[!4§ = param1;
         this.resize();
      }
      
      protected function resize() : void
      {
         this.§=`§.setHeight(this.§[!4§);
      }
      
      public function scrollItemToCenter(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:int = this.§=`§.offset;
         var _loc4_:int = Math.floor(this.§=`§.visibleItemsCount / 2);
         var _loc5_:int = param1 - _loc4_ - _loc3_;
         this.§=`§.scroll(_loc5_,!param2);
      }
      
      protected function §%B§(param1:Boolean) : void
      {
      }
   }
}
