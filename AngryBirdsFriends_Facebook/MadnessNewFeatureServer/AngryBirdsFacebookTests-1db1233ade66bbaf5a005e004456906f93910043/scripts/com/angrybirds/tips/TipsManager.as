package com.angrybirds.tips
{
   public class TipsManager
   {
      
      private static var sInstance:TipsManager = new TipsManager();
      
      private static var LEVEL_END_TIPS:Array = ["Use Power Potion to make Wingman even stronger!","The Blues are best at crashing glass!","Chuck breaks wood better than anyone!","Bomb beats stone, but can\'t handle wood!","Boomerang can be tricky - sometimes, a direct shot is best!","Use Wingman after flinging all your birds!","Jingle Sling adds a short-range scope to help you aim!","Use King Sling to improve damage and range!","Matilda drops an explosive egg and hits hard on her way out!","Use Wingman to smash levels and get amazing scores!","Bomb can be activated before OR after he hits!"];
      
      private static var LOADING_TIPS:Array = ["Use Inbox in the Sidebar to send free gifts to your friends!","Mystery gifts can hold Power-Ups and Bird Coins!","Get free Power-ups by inviting your friends to play!","Check back for special tournaments every month!","Slingshots are permanent - buy once, use forever!","Connect to Facebook to save progress between devices!","Reach higher League tiers to get even more epic rewards!","You cannot lose League rating until you reach Bronze tier.","Reach Diamond Tier in League and become a star player!","Go to League Options to edit your League Profile!"];
       
      
      public function TipsManager()
      {
         super();
         if(sInstance)
         {
            throw new Error("TipsManager is singleton");
         }
      }
      
      public static function get instance() : TipsManager
      {
         return sInstance;
      }
      
      public function getRandLevelEndTip() : String
      {
         return LEVEL_END_TIPS[this.randRange(0,LEVEL_END_TIPS.length - 1)];
      }
      
      public function getRandLoadingTip() : String
      {
         return LOADING_TIPS[this.randRange(0,LOADING_TIPS.length - 1)];
      }
      
      public function getTipAtIndex(index:int) : String
      {
         return LEVEL_END_TIPS[index];
      }
      
      public function get totalTips() : int
      {
         return LEVEL_END_TIPS.length;
      }
      
      private function randRange(minNum:Number, maxNum:Number) : Number
      {
         return Math.floor(Math.random() * (maxNum - minNum + 1)) + minNum;
      }
   }
}
