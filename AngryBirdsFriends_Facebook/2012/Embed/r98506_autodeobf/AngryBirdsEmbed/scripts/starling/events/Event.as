package starling.events
{
   import §2c§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §4o§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §8"§:String = "triggered";
      
      public static const §1@§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §2D§:String = "removeFromJuggler";
       
      
      private var § N§:EventDispatcher;
      
      private var §^[§:EventDispatcher;
      
      private var §0!5§:String;
      
      private var §'M§:Boolean;
      
      private var §^D§:Boolean;
      
      private var §&7§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§0!5§ = param1;
         this.§'M§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§^D§ = true;
      }
      
      public function §'!9§() : void
      {
         this.§&7§ = true;
         this.§^D§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§0!5§,this.§'M§);
      }
      
      function §<a§(param1:EventDispatcher) : void
      {
         this.§ N§ = param1;
      }
      
      function §@!'§(param1:EventDispatcher) : void
      {
         this.§^[§ = param1;
      }
      
      function get §,!G§() : Boolean
      {
         return this.§^D§;
      }
      
      function get §&N§() : Boolean
      {
         return this.§&7§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§'M§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§ N§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§^[§;
      }
      
      public function get type() : String
      {
         return this.§0!5§;
      }
   }
}
