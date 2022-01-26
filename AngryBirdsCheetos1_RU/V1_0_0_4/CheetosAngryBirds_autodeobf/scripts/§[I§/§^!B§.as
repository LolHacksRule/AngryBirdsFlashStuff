package §[I§
{
   import flash.events.Event;
   
   public class §^!B§ extends Event
   {
      
      public static const §%O§:String = "OnLoadComplete";
      
      public static const §+!R§:String = "OnFileNotFound";
      
      public static const § l§:String = "OnInit";
      
      public static const §#8§:String = "OnLoadProgress";
       
      
      public function §^!B§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §^!B§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("DynamicCutSceneLoaderEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
