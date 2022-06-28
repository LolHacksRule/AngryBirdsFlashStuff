package §6!'§
{
   import §"!2§.UIRepeaterRovio;
   import §@!H§.§-!H§;
   import §[!>§.StateBase;
   import §[c§.§5!?§;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   
   public class PopupsUIView extends §-!H§
   {
       
      
      public function PopupsUIView(newStateBase:StateBase)
      {
         super(newStateBase);
      }
      
      public static function §<! §(credits:Number) : String
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
      
      public function §!E§() : void
      {
         var categoryName:String = null;
         §5n§("Repeater_Items","Repeater_Items_Tab_0");
         var items:UIRepeaterRovio = getItemByName("Repeater_Items") as UIRepeaterRovio;
         var tabs:UIRepeaterRovio = getItemByName("Repeater_Tabs") as UIRepeaterRovio;
         if(§5!?§.§'%§().§if§.length > 0)
         {
            tabs.§+'§("Repeater_Tabs_Tab_0").§!>§(§5!?§.§'%§().§if§[0].name as String);
         }
         §5n§("Repeater_Tabs","Repeater_Tabs_Tab_0");
         for(var i:int = 0; i < §5!?§.§'%§().§if§.length; i++)
         {
            categoryName = §5!?§.§'%§().§if§[i].name;
            items.§+'§("Repeater_Items_Tab_" + i).§!>§(categoryName);
         }
      }
      
      public function §>Y§(tabName:String) : int
      {
         for(var i:int = 0; i < §5!?§.§'%§().§if§.length; )
         {
            if(tabName.toUpperCase() == §5!?§.§'%§().§if§[i].name.toUpperCase())
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
            return this.§5!I§();
         }
         if(repeaterName.toUpperCase() == "Repeater_Items".toUpperCase())
         {
            return this.§5!N§();
         }
         return null;
      }
      
      public function §5!I§() : Array
      {
         var list:Array = new Array();
         list[0] = new Array();
         return list;
      }
      
      public function §5!N§() : Array
      {
         var normalItems:Array = [];
         var buyItems:Array = [];
         var btnCls:Class = AssetCache.§,!k§("Repeater_Button_Editor_Items");
         var buyBtnCls:Class = AssetCache.§,!k§("Repeater_Button_Editor_Items_Buy");
         var limitedBuyBtnCls:Class = AssetCache.§,!k§("Repeater_Button_Editor_Items_LimitedTime");
         var starBtnCls:Class = AssetCache.§,!k§("Repeater_Button_Editor_Items_StarLimit");
         var onSaleBtnCls:Class = AssetCache.§,!k§("Repeater_Button_Editor_Items_OnSale");
         var starsAvailable:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         return this.§%!I§(normalItems,buyItems);
      }
      
      private function §%!I§(array1:Array, array2:Array) : Array
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
