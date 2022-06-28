package §9j§
{
   import §2y§.§<N§;
   import §8!H§.§9![§;
   import §;#§.§;?§;
   import §>f§.§&!G§;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   
   public class §2A§ extends §&!G§
   {
       
      
      public function §2A§(param1:§9![§)
      {
         super(param1);
      }
      
      public static function §>!=§(param1:Number) : String
      {
         param1 /= 10;
         var _loc2_:* = "$" + param1.toString();
         if(param1 != int(param1))
         {
            _loc2_ += "0";
         }
         return _loc2_;
      }
      
      override public function activateView() : void
      {
         super.activateView();
      }
      
      public function §each §() : void
      {
         var _loc4_:String = null;
         §?!]§("Repeater_Items","Repeater_Items_Tab_0");
         var _loc1_:§<N§ = getItemByName("Repeater_Items") as §<N§;
         var _loc2_:§<N§ = getItemByName("Repeater_Tabs") as §<N§;
         if(§;?§.§]0§().§>!J§.length > 0)
         {
            _loc2_.§1!@§("Repeater_Tabs_Tab_0").§@G§(§;?§.§]0§().§>!J§[0].name as String);
         }
         §?!]§("Repeater_Tabs","Repeater_Tabs_Tab_0");
         var _loc3_:int = 0;
         while(_loc3_ < §;?§.§]0§().§>!J§.length)
         {
            _loc4_ = §;?§.§]0§().§>!J§[_loc3_].name;
            _loc1_.§1!@§("Repeater_Items_Tab_" + _loc3_).§@G§(_loc4_);
            _loc3_++;
         }
      }
      
      public function §6!,§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §;?§.§]0§().§>!J§.length)
         {
            if(param1.toUpperCase() == §;?§.§]0§().§>!J§[_loc2_].name.toUpperCase())
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      override public function getRepeaterDataXML(param1:String) : Array
      {
         if(param1.toUpperCase() == "Repeater_Tabs".toUpperCase())
         {
            return this.§6!x§();
         }
         if(param1.toUpperCase() == "Repeater_Items".toUpperCase())
         {
            return this.§`B§();
         }
         return null;
      }
      
      public function §6!x§() : Array
      {
         var _loc1_:Array = new Array();
         _loc1_[0] = new Array();
         return _loc1_;
      }
      
      public function §`B§() : Array
      {
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         var _loc6_:Class = §,!j§.§!!N§("Repeater_Button_Editor_Items");
         var _loc7_:Class = §,!j§.§!!N§("Repeater_Button_Editor_Items_Buy");
         var _loc8_:Class = §,!j§.§!!N§("Repeater_Button_Editor_Items_LimitedTime");
         var _loc9_:Class = §,!j§.§!!N§("Repeater_Button_Editor_Items_StarLimit");
         var _loc10_:Class = §,!j§.§!!N§("Repeater_Button_Editor_Items_OnSale");
         var _loc11_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         return this.§1!e§(_loc4_,_loc5_);
      }
      
      private function §1!e§(param1:Array, param2:Array) : Array
      {
         var _loc3_:int = Math.max(param1.length,param2.length);
         var _loc4_:Array = [];
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_[_loc5_] = param1[_loc5_].concat(param2[_loc5_]);
            _loc5_++;
         }
         return _loc4_;
      }
   }
}
