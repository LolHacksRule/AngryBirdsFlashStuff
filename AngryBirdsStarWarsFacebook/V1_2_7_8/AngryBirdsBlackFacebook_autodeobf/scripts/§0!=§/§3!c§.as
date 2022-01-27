package §0!=§
{
   import §9!&§.§`-§;
   import §[!`§.§>"6§;
   import §`!b§.§''§;
   import §`!b§.§<!9§;
   import flash.display.Sprite;
   
   public class §3!c§ extends Sprite
   {
       
      
      protected var §=![§:§""k§;
      
      protected var §-"Y§:§''§;
      
      protected var §7!A§:Class;
      
      protected var §^"t§:Number;
      
      protected var §`!y§:Number;
      
      protected var §8G§:§<!9§;
      
      public function §3!c§(param1:Number, param2:Number, param3:Class, param4:§''§)
      {
         super();
         this.§^"t§ = param1;
         this.§`!y§ = param2;
         this.§7!A§ = param3 || §`-§;
         this.§-"Y§ = param4;
         this.init();
      }
      
      protected function init() : void
      {
         this.§=![§ = new §""k§(this.§^"t§,this.§`!y§,[],this.§7!A§,2,15);
         addChild(this.§=![§.scrollerSprite);
      }
      
      public function showLevelScores(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc4_:§<!9§ = this.§-"Y§.§&"L§(param1,param2,param3);
         this.showScores(_loc4_);
         if(!_loc4_.isLoading)
         {
            _loc4_.loadItems(0,0);
         }
      }
      
      public function showTotalScores(param1:Boolean = false) : void
      {
         var _loc2_:§<!9§ = this.§-"Y§.getTotalScores();
         this.showScores(_loc2_);
      }
      
      public function showScores(param1:§<!9§) : void
      {
         if(param1 == this.§8G§)
         {
            return;
         }
         if(this.§8G§)
         {
            this.§8G§.removeEventListener(§>"6§.§["<§,this.onCurrentScoresDataLoaded);
         }
         this.§8G§ = param1;
         this.§8G§.addEventListener(§>"6§.§["<§,this.onCurrentScoresDataLoaded);
         this.§=![§.data = this.§8G§.data;
         if(param1.isLoading)
         {
            this.§?#$§(true);
         }
      }
      
      protected function onCurrentScoresDataLoaded(param1:§>"6§) : void
      {
         this.§=![§.data = this.§8G§.data;
         if(!this.§8G§.isLoading)
         {
            this.§?#$§(false);
         }
      }
      
      override public function set height(param1:Number) : void
      {
         this.§`!y§ = param1;
         this.resize();
      }
      
      protected function resize() : void
      {
         this.§=![§.setHeight(this.§`!y§);
      }
      
      public function scrollItemToCenter(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:int = this.§=![§.offset;
         var _loc4_:int = Math.floor(this.§=![§.visibleItemsCount / 2);
         var _loc5_:int = param1 - _loc4_ - _loc3_;
         this.§=![§.scroll(_loc5_,!param2);
      }
      
      protected function §?#$§(param1:Boolean) : void
      {
      }
   }
}
