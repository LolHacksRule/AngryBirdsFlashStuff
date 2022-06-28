package §8!;§
{
   import §+0§.§,!E§;
   import §1!E§.§31§;
   import §4;§.§5n§;
   import §[!+§.§4`§;
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   
   public class §`7§ extends §4`§
   {
       
      
      public function §`7§(param1:§,!E§)
      {
         super(param1);
      }
      
      public static function §&K§(param1:Number) : String
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
      
      public function §%V§() : void
      {
         var _loc4_:String = null;
         §>!]§("Repeater_Items","Repeater_Items_Tab_0");
         var _loc1_:§31§ = getItemByName("Repeater_Items") as §31§;
         var _loc2_:§31§ = getItemByName("Repeater_Tabs") as §31§;
         if(§5n§.§0?§().§]!Q§.length > 0)
         {
            _loc2_.§-!3§("Repeater_Tabs_Tab_0").§<!_§(§5n§.§0?§().§]!Q§[0].name as String);
         }
         §>!]§("Repeater_Tabs","Repeater_Tabs_Tab_0");
         var _loc3_:int = 0;
         while(_loc3_ < §5n§.§0?§().§]!Q§.length)
         {
            _loc4_ = §5n§.§0?§().§]!Q§[_loc3_].name;
            _loc1_.§-!3§("Repeater_Items_Tab_" + _loc3_).§<!_§(_loc4_);
            _loc3_++;
         }
      }
      
      public function §+!+§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §5n§.§0?§().§]!Q§.length)
         {
            if(param1.toUpperCase() == §5n§.§0?§().§]!Q§[_loc2_].name.toUpperCase())
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
            return this.§=!,§();
         }
         if(param1.toUpperCase() == "Repeater_Items".toUpperCase())
         {
            return this.§>u§();
         }
         return null;
      }
      
      public function §=!,§() : Array
      {
         var _loc1_:Array = new Array();
         _loc1_[0] = new Array();
         return _loc1_;
      }
      
      public function §>u§() : Array
      {
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         var _loc6_:Class = §`!t§.§=J§("Repeater_Button_Editor_Items");
         var _loc7_:Class = §`!t§.§=J§("Repeater_Button_Editor_Items_Buy");
         var _loc8_:Class = §`!t§.§=J§("Repeater_Button_Editor_Items_LimitedTime");
         var _loc9_:Class = §`!t§.§=J§("Repeater_Button_Editor_Items_StarLimit");
         var _loc10_:Class = §`!t§.§=J§("Repeater_Button_Editor_Items_OnSale");
         var _loc11_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         return this.§]5§(_loc4_,_loc5_);
      }
      
      private function §]5§(param1:Array, param2:Array) : Array
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
