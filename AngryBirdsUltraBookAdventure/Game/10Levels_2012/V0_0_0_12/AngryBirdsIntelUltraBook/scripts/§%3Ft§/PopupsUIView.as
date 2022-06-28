package §?t§
{
   import §3w§.§1!!§;
   import §4!9§.§6"§;
   import §4H§.StateBase;
   import §]!6§.UIRepeaterRovio;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   
   public class PopupsUIView extends §6"§
   {
       
      
      public function PopupsUIView(newStateBase:StateBase)
      {
         super(newStateBase);
      }
      
      public static function §",§(credits:Number) : String
      {
         credits /= 10;
         var result:String = "$" + credits.toString();
         if(credits != int(credits))
         {
            result += "0";
         }
         return result;
      }
      
      override public function activateView() : void
      {
         super.activateView();
      }
      
      public function §4i§() : void
      {
         var categoryName:String = null;
         §31§("Repeater_Items","Repeater_Items_Tab_0");
         var items:UIRepeaterRovio = getItemByName("Repeater_Items") as UIRepeaterRovio;
         var tabs:UIRepeaterRovio = getItemByName("Repeater_Tabs") as UIRepeaterRovio;
         if(§1!!§.§[!Y§().§,!#§.length > 0)
         {
            tabs.§9k§("Repeater_Tabs_Tab_0").§9!+§(§1!!§.§[!Y§().§,!#§[0].name as String);
         }
         §31§("Repeater_Tabs","Repeater_Tabs_Tab_0");
         for(var i:int = 0; i < §1!!§.§[!Y§().§,!#§.length; i++)
         {
            categoryName = §1!!§.§[!Y§().§,!#§[i].name;
            items.§9k§("Repeater_Items_Tab_" + i).§9!+§(categoryName);
         }
      }
      
      public function §!!§(tabName:String) : int
      {
         for(var i:int = 0; i < §1!!§.§[!Y§().§,!#§.length; )
         {
            if(tabName.toUpperCase() == §1!!§.§[!Y§().§,!#§[i].name.toUpperCase())
            {
               return i;
            }
            i++;
         }
         return -1;
      }
      
      override public function getRepeaterDataXML(repeaterName:String) : Array
      {
         if(repeaterName.toUpperCase() == "Repeater_Tabs".toUpperCase())
         {
            return this.§%L§();
         }
         if(repeaterName.toUpperCase() == "Repeater_Items".toUpperCase())
         {
            return this.§=@§();
         }
         return null;
      }
      
      public function §%L§() : Array
      {
         var list:Array = new Array();
         list[0] = new Array();
         return list;
      }
      
      public function §=@§() : Array
      {
         var normalItems:Array = [];
         var buyItems:Array = [];
         var btnCls:Class = AssetCache.§-9§("Repeater_Button_Editor_Items");
         var buyBtnCls:Class = AssetCache.§-9§("Repeater_Button_Editor_Items_Buy");
         var limitedBuyBtnCls:Class = AssetCache.§-9§("Repeater_Button_Editor_Items_LimitedTime");
         var starBtnCls:Class = AssetCache.§-9§("Repeater_Button_Editor_Items_StarLimit");
         var onSaleBtnCls:Class = AssetCache.§-9§("Repeater_Button_Editor_Items_OnSale");
         var starsAvailable:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         return this.§5!9§(normalItems,buyItems);
      }
      
      private function §5!9§(array1:Array, array2:Array) : Array
      {
         var totalLength:int = Math.max(array1.length,array2.length);
         var newArray:Array = [];
         for(var i:int = 0; i < totalLength; i++)
         {
            newArray[i] = array1[i].concat(array2[i]);
         }
         return newArray;
      }
   }
}
