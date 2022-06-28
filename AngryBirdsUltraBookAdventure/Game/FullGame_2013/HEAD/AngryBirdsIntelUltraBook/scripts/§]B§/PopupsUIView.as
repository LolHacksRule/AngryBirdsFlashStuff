package §]B§
{
   import §1N§.StateBase;
   import §6a§.UIRepeaterRovio;
   import §<_§.§5!2§;
   import §=!5§.§`X§;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   
   public class PopupsUIView extends §`X§
   {
       
      
      public function PopupsUIView(newStateBase:StateBase)
      {
         super(newStateBase);
      }
      
      public static function §<!4§(credits:Number) : String
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
      
      public function §?E§() : void
      {
         var categoryName:String = null;
         §+!L§("Repeater_Items","Repeater_Items_Tab_0");
         var items:UIRepeaterRovio = getItemByName("Repeater_Items") as UIRepeaterRovio;
         var tabs:UIRepeaterRovio = getItemByName("Repeater_Tabs") as UIRepeaterRovio;
         if(§5!2§.§]W§().§+@§.length > 0)
         {
            tabs.§;!W§("Repeater_Tabs_Tab_0").§?!#§(§5!2§.§]W§().§+@§[0].name as String);
         }
         §+!L§("Repeater_Tabs","Repeater_Tabs_Tab_0");
         for(var i:int = 0; i < §5!2§.§]W§().§+@§.length; i++)
         {
            categoryName = §5!2§.§]W§().§+@§[i].name;
            items.§;!W§("Repeater_Items_Tab_" + i).§?!#§(categoryName);
         }
      }
      
      public function §0S§(tabName:String) : int
      {
         for(var i:int = 0; i < §5!2§.§]W§().§+@§.length; )
         {
            if(tabName.toUpperCase() == §5!2§.§]W§().§+@§[i].name.toUpperCase())
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
            return this.§]s§();
         }
         if(repeaterName.toUpperCase() == "Repeater_Items".toUpperCase())
         {
            return this.§^2§();
         }
         return null;
      }
      
      public function §]s§() : Array
      {
         var list:Array = new Array();
         list[0] = new Array();
         return list;
      }
      
      public function §^2§() : Array
      {
         var normalItems:Array = [];
         var buyItems:Array = [];
         var btnCls:Class = AssetCache.§%p§("Repeater_Button_Editor_Items");
         var buyBtnCls:Class = AssetCache.§%p§("Repeater_Button_Editor_Items_Buy");
         var limitedBuyBtnCls:Class = AssetCache.§%p§("Repeater_Button_Editor_Items_LimitedTime");
         var starBtnCls:Class = AssetCache.§%p§("Repeater_Button_Editor_Items_StarLimit");
         var onSaleBtnCls:Class = AssetCache.§%p§("Repeater_Button_Editor_Items_OnSale");
         var starsAvailable:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         return this.§^!Q§(normalItems,buyItems);
      }
      
      private function §^!Q§(array1:Array, array2:Array) : Array
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
