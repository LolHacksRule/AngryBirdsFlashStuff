package §=@§
{
   import flash.events.Event;
   
   public class §`A§ extends Event
   {
      
      public static const §;'§:String = "OnLoadComplete";
      
      public static const §!!M§:String = "OnFileNotFound";
      
      public static const §7"§:String = "OnInit";
      
      public static const §7!P§:String = "OnLoadProgress";
       
      
      public function §`A§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §`A§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("DynamicCutSceneLoaderEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
