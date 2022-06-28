package §-2§
{
   import §1n§.§ C§;
   import §8,§.§+_§;
   import §^c§.§+-§;
   import §`M§.§[A§;
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   
   public class § !O§ extends § C§
   {
       
      
      public function § !O§(param1:§+_§)
      {
         super(param1);
      }
      
      public static function §9"§(param1:Number) : String
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
      
      public function §#'§() : void
      {
         var _loc4_:String = null;
         §%! §("Repeater_Items","Repeater_Items_Tab_0");
         var _loc1_:§[A§ = getItemByName("Repeater_Items") as §[A§;
         var _loc2_:§[A§ = getItemByName("Repeater_Tabs") as §[A§;
         if(§+-§.§?!9§().§1K§.length > 0)
         {
            _loc2_.§1l§("Repeater_Tabs_Tab_0").§`?§(§+-§.§?!9§().§1K§[0].name as String);
         }
         §%! §("Repeater_Tabs","Repeater_Tabs_Tab_0");
         var _loc3_:int = 0;
         while(_loc3_ < §+-§.§?!9§().§1K§.length)
         {
            _loc4_ = §+-§.§?!9§().§1K§[_loc3_].name;
            _loc1_.§1l§("Repeater_Items_Tab_" + _loc3_).§`?§(_loc4_);
            _loc3_++;
         }
      }
      
      public function §"N§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §+-§.§?!9§().§1K§.length)
         {
            if(param1.toUpperCase() == §+-§.§?!9§().§1K§[_loc2_].name.toUpperCase())
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
            return this.§]r§();
         }
         if(param1.toUpperCase() == "Repeater_Items".toUpperCase())
         {
            return this.§99§();
         }
         return null;
      }
      
      public function §]r§() : Array
      {
         var _loc1_:Array = new Array();
         _loc1_[0] = new Array();
         return _loc1_;
      }
      
      public function §99§() : Array
      {
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         var _loc6_:Class = §9!N§.§0!k§("Repeater_Button_Editor_Items");
         var _loc7_:Class = §9!N§.§0!k§("Repeater_Button_Editor_Items_Buy");
         var _loc8_:Class = §9!N§.§0!k§("Repeater_Button_Editor_Items_LimitedTime");
         var _loc9_:Class = §9!N§.§0!k§("Repeater_Button_Editor_Items_StarLimit");
         var _loc10_:Class = §9!N§.§0!k§("Repeater_Button_Editor_Items_OnSale");
         var _loc11_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         return this.§&!;§(_loc4_,_loc5_);
      }
      
      private function §&!;§(param1:Array, param2:Array) : Array
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
