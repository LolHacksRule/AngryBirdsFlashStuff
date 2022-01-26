package starling.events
{
   import §3!$§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §+_§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §9!-§:String = "triggered";
      
      public static const § -§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §<!D§:String = "removeFromJuggler";
       
      
      private var §3!2§:EventDispatcher;
      
      private var §,Q§:EventDispatcher;
      
      private var §@!B§:String;
      
      private var §6$§:Boolean;
      
      private var §%l§:Boolean;
      
      private var §>w§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§@!B§ = param1;
         this.§6$§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§%l§ = true;
      }
      
      public function §'!9§() : void
      {
         this.§>w§ = true;
         this.§%l§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§@!B§,this.§6$§);
      }
      
      function §!g§(param1:EventDispatcher) : void
      {
         this.§3!2§ = param1;
      }
      
      function §1!-§(param1:EventDispatcher) : void
      {
         this.§,Q§ = param1;
      }
      
      function get §[!=§() : Boolean
      {
         return this.§%l§;
      }
      
      function get §^!A§() : Boolean
      {
         return this.§>w§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§6$§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§3!2§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§,Q§;
      }
      
      public function get type() : String
      {
         return this.§@!B§;
      }
   }
}
