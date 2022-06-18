package §4!§
{
   import flash.events.Event;
   
   public class §9U§ extends Event
   {
      
      public static const §[Y§:String = "OnLoadComplete";
      
      public static const §?W§:String = "OnFileNotFound";
      
      public static const §1"§:String = "OnInit";
      
      public static const §>4§:String = "OnLoadProgress";
       
      
      public function §9U§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §9U§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("DynamicCutSceneLoaderEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
