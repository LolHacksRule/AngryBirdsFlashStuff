package starling.events
{
   import §'j§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §,6§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §>Y§:String = "triggered";
      
      public static const §0@§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §'D§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            ADDED = "added";
            if(_loc2_)
            {
               ADDED_TO_STAGE = "addedToStage";
               ENTER_FRAME = "enterFrame";
               §,6§ = "removed";
               REMOVED_FROM_STAGE = "removedFromStage";
               if(!_loc1_)
               {
                  §>Y§ = "triggered";
                  if(_loc2_ || _loc2_)
                  {
                     §0@§ = "flatten";
                     addr58:
                     if(_loc2_ || Event)
                     {
                        RESIZE = "resize";
                        if(_loc2_ || _loc1_)
                        {
                           addr88:
                           COMPLETE = "complete";
                        }
                     }
                     CONTEXT3D_CREATE = "context3DCreate";
                     if(!_loc1_)
                     {
                        §'D§ = "removeFromJuggler";
                     }
                  }
                  return;
               }
               §§goto(addr58);
            }
            §§goto(addr88);
         }
         §§goto(addr58);
      }
      
      private var §@N§:EventDispatcher;
      
      private var §'!I§:EventDispatcher;
      
      private var §<"§:String;
      
      private var §4z§:Boolean;
      
      private var §+=§:Boolean;
      
      private var §9J§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super();
            if(!(_loc3_ && param1))
            {
               this.§<"§ = param1;
               if(_loc3_)
               {
               }
               §§goto(addr51);
            }
            this.§4z§ = param2;
         }
         addr51:
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§+=§ = true;
         }
      }
      
      public function §&!H§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§+=§ = this.§9J§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§<"§,this.§4z§);
      }
      
      function §'^§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@N§ = param1;
         }
      }
      
      function §8!I§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§'!I§ = param1;
         }
      }
      
      function get §2S§() : Boolean
      {
         return this.§+=§;
      }
      
      function get §4n§() : Boolean
      {
         return this.§9J§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§4z§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§@N§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§'!I§;
      }
      
      public function get type() : String
      {
         return this.§<"§;
      }
   }
}
