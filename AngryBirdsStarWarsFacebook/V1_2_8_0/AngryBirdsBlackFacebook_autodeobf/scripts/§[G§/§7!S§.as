package §[G§
{
   import §"d§.§-F§;
   import §0"k§.§8"T§;
   import §0"k§.§85§;
   import §8§.§"!E§;
   import flash.display.Sprite;
   
   public class §7!S§ extends Sprite
   {
       
      
      protected var §6"9§:§<^§;
      
      protected var §<!U§:§8"T§;
      
      protected var §07§:Class;
      
      protected var §0"e§:Number;
      
      protected var §?!O§:Number;
      
      protected var §!"[§:§85§;
      
      public function §7!S§(param1:Number, param2:Number, param3:Class, param4:§8"T§)
      {
         super();
         this.§0"e§ = param1;
         this.§?!O§ = param2;
         this.§07§ = param3 || §"!E§;
         this.§<!U§ = param4;
         this.init();
      }
      
      protected function init() : void
      {
         this.§6"9§ = new §<^§(this.§0"e§,this.§?!O§,[],this.§07§,2,15);
         addChild(this.§6"9§.scrollerSprite);
      }
      
      public function showLevelScores(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc4_:§85§ = this.§<!U§.§3+§(param1,param2,param3);
         this.showScores(_loc4_);
         if(!_loc4_.isLoading)
         {
            _loc4_.loadItems(0,0);
         }
      }
      
      public function showTotalScores(param1:Boolean = false) : void
      {
         var _loc2_:§85§ = this.§<!U§.getTotalScores();
         this.showScores(_loc2_);
      }
      
      public function showScores(param1:§85§) : void
      {
         if(param1 == this.§!"[§)
         {
            return;
         }
         if(this.§!"[§)
         {
            this.§!"[§.removeEventListener(§-F§.§&!h§,this.onCurrentScoresDataLoaded);
         }
         this.§!"[§ = param1;
         this.§!"[§.addEventListener(§-F§.§&!h§,this.onCurrentScoresDataLoaded);
         this.§6"9§.data = this.§!"[§.data;
         if(param1.isLoading)
         {
            this.§4+§(true);
         }
      }
      
      protected function onCurrentScoresDataLoaded(param1:§-F§) : void
      {
         this.§6"9§.data = this.§!"[§.data;
         if(!this.§!"[§.isLoading)
         {
            this.§4+§(false);
         }
      }
      
      override public function set height(param1:Number) : void
      {
         this.§?!O§ = param1;
         this.resize();
      }
      
      protected function resize() : void
      {
         this.§6"9§.setHeight(this.§?!O§);
      }
      
      public function scrollItemToCenter(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:int = this.§6"9§.offset;
         var _loc4_:int = Math.floor(this.§6"9§.visibleItemsCount / 2);
         var _loc5_:int = param1 - _loc4_ - _loc3_;
         this.§6"9§.scroll(_loc5_,!param2);
      }
      
      protected function §4+§(param1:Boolean) : void
      {
      }
   }
}
