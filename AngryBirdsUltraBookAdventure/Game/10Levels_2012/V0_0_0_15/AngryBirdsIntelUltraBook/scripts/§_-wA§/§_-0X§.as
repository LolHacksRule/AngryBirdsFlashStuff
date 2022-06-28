package §_-wA§
{
   import §_-6C§.§_-05d§;
   import §_-Yl§.§_-5q§;
   import §_-x8§.§_-nG§;
   import §_-y7§.§_-xe§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   
   public class §_-0X§ extends §_-5q§
   {
       
      
      public function §_-0X§(param1:§_-nG§)
      {
         super(param1);
      }
      
      public static function §_-Dx§(param1:Number) : String
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
      
      public function §_-8i§() : void
      {
         var _loc4_:String = null;
         §_-oK§("Repeater_Items","Repeater_Items_Tab_0");
         var _loc1_:§_-05d§ = getItemByName("Repeater_Items") as §_-05d§;
         var _loc2_:§_-05d§ = getItemByName("Repeater_Tabs") as §_-05d§;
         if(§_-xe§.§_-eA§().§_-05v§.length > 0)
         {
            _loc2_.§_-02B§("Repeater_Tabs_Tab_0").§_-0BT§(§_-xe§.§_-eA§().§_-05v§[0].name as String);
         }
         §_-oK§("Repeater_Tabs","Repeater_Tabs_Tab_0");
         var _loc3_:int = 0;
         while(_loc3_ < §_-xe§.§_-eA§().§_-05v§.length)
         {
            _loc4_ = §_-xe§.§_-eA§().§_-05v§[_loc3_].name;
            _loc1_.§_-02B§("Repeater_Items_Tab_" + _loc3_).§_-0BT§(_loc4_);
            _loc3_++;
         }
      }
      
      public function §_-00i§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-xe§.§_-eA§().§_-05v§.length)
         {
            if(param1.toUpperCase() == §_-xe§.§_-eA§().§_-05v§[_loc2_].name.toUpperCase())
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
            return this.§_-iw§();
         }
         if(param1.toUpperCase() == "Repeater_Items".toUpperCase())
         {
            return this.§_-oQ§();
         }
         return null;
      }
      
      public function §_-iw§() : Array
      {
         var _loc1_:Array = new Array();
         _loc1_[0] = new Array();
         return _loc1_;
      }
      
      public function §_-oQ§() : Array
      {
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         var _loc6_:Class = §_-Fc§.§_-YE§("Repeater_Button_Editor_Items");
         var _loc7_:Class = §_-Fc§.§_-YE§("Repeater_Button_Editor_Items_Buy");
         var _loc8_:Class = §_-Fc§.§_-YE§("Repeater_Button_Editor_Items_LimitedTime");
         var _loc9_:Class = §_-Fc§.§_-YE§("Repeater_Button_Editor_Items_StarLimit");
         var _loc10_:Class = §_-Fc§.§_-YE§("Repeater_Button_Editor_Items_OnSale");
         var _loc11_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         return this.§_-U7§(_loc4_,_loc5_);
      }
      
      private function §_-U7§(param1:Array, param2:Array) : Array
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
