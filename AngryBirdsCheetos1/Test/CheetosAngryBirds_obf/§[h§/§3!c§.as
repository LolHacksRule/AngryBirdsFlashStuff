package §[h§
{
   import flash.events.Event;
   
   public class §3!c§ extends Event
   {
      
      public static const §%!g§:String = "OnLoadComplete";
      
      public static const §;d§:String = "OnFileNotFound";
      
      public static const § F§:String = "OnInit";
      
      public static const §`!O§:String = "OnLoadProgress";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §%!g§ = "OnLoadComplete";
            while(true)
            {
               §;d§ = "OnFileNotFound";
               loop1:
               while(!(_loc2_ && §3!c§))
               {
                  § F§ = "OnInit";
                  while(true)
                  {
                     §`!O§ = "OnLoadProgress";
                     if(_loc1_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr46);
      }
      
      public function §3!c§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
         }
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
