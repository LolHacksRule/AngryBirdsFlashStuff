package §3!8§
{
   import flash.events.Event;
   
   public class §?d§ extends Event
   {
      
      public static const §[9§:String = "OnLoadComplete";
      
      public static const §+W§:String = "OnFileNotFound";
      
      public static const §5!b§:String = "OnInit";
      
      public static const §1!`§:String = "OnLoadProgress";
       
      
      public function §?d§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §?d§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("DynamicCutSceneLoaderEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
