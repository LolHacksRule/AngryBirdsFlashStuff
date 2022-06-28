package §7=§
{
   import §2h§.§'!^§;
   import §<!>§.§?Y§;
   import §?!7§.§?!x§;
   import §`!%§.§6!_§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   
   public class §7j§ extends §'!^§
   {
       
      
      public function §7j§(param1:§?Y§)
      {
         super(param1);
      }
      
      public static function §`B§(param1:Number) : String
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
      
      public function §[!E§() : void
      {
         var _loc4_:String = null;
         §;!!§("Repeater_Items","Repeater_Items_Tab_0");
         var _loc1_:§?!x§ = getItemByName("Repeater_Items") as §?!x§;
         var _loc2_:§?!x§ = getItemByName("Repeater_Tabs") as §?!x§;
         if(§6!_§.§1w§().§=!b§.length > 0)
         {
            _loc2_.§#!0§("Repeater_Tabs_Tab_0").§`N§(§6!_§.§1w§().§=!b§[0].name as String);
         }
         §;!!§("Repeater_Tabs","Repeater_Tabs_Tab_0");
         var _loc3_:int = 0;
         while(_loc3_ < §6!_§.§1w§().§=!b§.length)
         {
            _loc4_ = §6!_§.§1w§().§=!b§[_loc3_].name;
            _loc1_.§#!0§("Repeater_Items_Tab_" + _loc3_).§`N§(_loc4_);
            _loc3_++;
         }
      }
      
      public function §,!8§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §6!_§.§1w§().§=!b§.length)
         {
            if(param1.toUpperCase() == §6!_§.§1w§().§=!b§[_loc2_].name.toUpperCase())
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
            return this.§ S§();
         }
         if(param1.toUpperCase() == "Repeater_Items".toUpperCase())
         {
            return this.§-[§();
         }
         return null;
      }
      
      public function § S§() : Array
      {
         var _loc1_:Array = new Array();
         _loc1_[0] = new Array();
         return _loc1_;
      }
      
      public function §-[§() : Array
      {
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         var _loc6_:Class = §%!G§.§^!B§("Repeater_Button_Editor_Items");
         var _loc7_:Class = §%!G§.§^!B§("Repeater_Button_Editor_Items_Buy");
         var _loc8_:Class = §%!G§.§^!B§("Repeater_Button_Editor_Items_LimitedTime");
         var _loc9_:Class = §%!G§.§^!B§("Repeater_Button_Editor_Items_StarLimit");
         var _loc10_:Class = §%!G§.§^!B§("Repeater_Button_Editor_Items_OnSale");
         var _loc11_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         return this.§`!M§(_loc4_,_loc5_);
      }
      
      private function §`!M§(param1:Array, param2:Array) : Array
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
