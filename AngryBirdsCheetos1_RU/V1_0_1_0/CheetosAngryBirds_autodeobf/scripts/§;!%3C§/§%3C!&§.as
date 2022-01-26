package §;!<§
{
   import flash.events.Event;
   
   public class §<!&§ extends Event
   {
      
      public static const §2X§:String = "OnLoadComplete";
      
      public static const §0-§:String = "OnFileNotFound";
      
      public static const §;!5§:String = "OnInit";
      
      public static const §8&§:String = "OnLoadProgress";
       
      
      public function §<!&§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §<!&§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("DynamicCutSceneLoaderEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
