package starling.events
{
   import §9!^§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §`!A§:String = "removed";
      
      public static const §&!_§:String = "removedFromStage";
      
      public static const § ,§:String = "triggered";
      
      public static const §3p§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §6=§:String = "removeFromJuggler";
       
      
      private var §@7§:EventDispatcher;
      
      private var §8M§:EventDispatcher;
      
      private var §!4§:String;
      
      private var §-y§:Boolean;
      
      private var § "§:Boolean;
      
      private var §;'§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§!4§ = param1;
         this.§-y§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§ "§ = true;
      }
      
      public function §7!!§() : void
      {
         this.§;'§ = true;
         this.§ "§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§!4§,this.§-y§);
      }
      
      function §3C§(param1:EventDispatcher) : void
      {
         this.§@7§ = param1;
      }
      
      function §[-§(param1:EventDispatcher) : void
      {
         this.§8M§ = param1;
      }
      
      function get §[!c§() : Boolean
      {
         return this.§ "§;
      }
      
      function get §&!G§() : Boolean
      {
         return this.§;'§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§-y§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§@7§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§8M§;
      }
      
      public function get type() : String
      {
         return this.§!4§;
      }
   }
}
