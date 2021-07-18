package §[h§
{
   import flash.events.Event;
   
   public class §3!c§ extends Event
   {
      
      public static const §%!g§:String = "OnLoadComplete";
      
      public static const §;d§:String = "OnFileNotFound";
      
      public static const § F§:String = "OnInit";
      
      public static const §`!O§:String = "OnLoadProgress";
       
      
      public function §3!c§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §3!c§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("DynamicCutSceneLoaderEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
