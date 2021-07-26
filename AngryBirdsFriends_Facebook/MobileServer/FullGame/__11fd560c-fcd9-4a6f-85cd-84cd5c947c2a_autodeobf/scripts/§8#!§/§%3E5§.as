package §8#!§
{
   import §3#T§.§@"!§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §>5§
   {
      
      public static const §+!C§:int = 0;
      
      public static const §4E§:int = 1;
      
      public static const §^!f§:int = 2;
      
      public static const §"#y§:int = 3;
      
      private static const §>!R§:String = "DECO_";
      
      private static const §2#^§:String = "CURRENT_";
       
      
      private var §+a§:int;
      
      private var §>$@§:§@"!§;
      
      private var §^!T§:§5`§;
      
      public function §>5§(param1:§@"!§, param2:int)
      {
         super();
         this.§>$@§ = param1;
         this.§^!T§ = §5`§.§6!§;
         var _loc3_:Array = new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
         var _loc4_:Date = new Date();
         (this.§>$@§.mClip.getChildByName("StartDayText") as TextField).text = _loc3_[_loc4_.getDay()];
         this.setState(param2);
         this.§8k§();
      }
      
      public function setState(param1:int) : void
      {
         this.§+a§ = param1;
         switch(this.§+a§)
         {
            case §+!C§:
               break;
            case §4E§:
               this.§>$@§.mClip.getChildByName("Bottom_Play").visible = false;
               this.§>$@§.mClip.getChildByName("Bottom_Join").visible = true;
               this.§>$@§.mClip.getChildByName("ExtraGift").visible = true;
               break;
            case §^!f§:
               this.§>$@§.mClip.getChildByName("Bottom_Play").visible = true;
               this.§>$@§.mClip.getChildByName("Bottom_Join").visible = false;
               this.§>$@§.mClip.getChildByName("ExtraGift").visible = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         switch(this.§+a§)
         {
            case §+!C§:
               break;
            case §4E§:
            case §^!f§:
               this.§8$A§();
         }
      }
      
      protected function §8$A§() : void
      {
         var _loc1_:Array = this.§^!T§.§?#U§();
         (this.§>$@§.mClip.getChildByName("DaysLeft") as TextField).text = _loc1_[0];
         _loc1_ = null;
      }
      
      private function §8k§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:MovieClip = this.§>$@§.mClip.getChildByName("Deco") as MovieClip;
         _loc1_.removeChildren();
         var _loc2_:Class = §!"f§.§##?§(§>!R§ + this.§^!T§.tournamentRules.§7"4§,false,false);
         if(_loc2_)
         {
            _loc3_ = new _loc2_();
            _loc1_.addChild(_loc3_);
         }
         _loc1_ = this.§>$@§.mClip.getChildByName("Current_Image") as MovieClip;
         _loc2_ = §!"f§.§##?§(§2#^§ + this.§^!T§.tournamentRules.§7"4§,false,false);
         if(_loc2_)
         {
            _loc1_.removeChildren();
            _loc3_ = new _loc2_();
            _loc1_.addChild(_loc3_);
         }
      }
   }
}
