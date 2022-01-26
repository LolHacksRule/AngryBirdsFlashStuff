package starling.events
{
   import §8!4§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §^Z§:String = "removed";
      
      public static const §4!@§:String = "removedFromStage";
      
      public static const §==§:String = "triggered";
      
      public static const §!![§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §2!&§:String = "removeFromJuggler";
       
      
      private var §;J§:EventDispatcher;
      
      private var §>!C§:EventDispatcher;
      
      private var §'a§:String;
      
      private var §9^§:Boolean;
      
      private var §0!@§:Boolean;
      
      private var §=!B§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§'a§ = param1;
         this.§9^§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§0!@§ = true;
      }
      
      public function §`!=§() : void
      {
         this.§=!B§ = true;
         this.§0!@§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§'a§,this.§9^§);
      }
      
      function §^!M§(param1:EventDispatcher) : void
      {
         this.§;J§ = param1;
      }
      
      function §!2§(param1:EventDispatcher) : void
      {
         this.§>!C§ = param1;
      }
      
      function get §5t§() : Boolean
      {
         return this.§0!@§;
      }
      
      function get §'!3§() : Boolean
      {
         return this.§=!B§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§9^§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§;J§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§>!C§;
      }
      
      public function get type() : String
      {
         return this.§'a§;
      }
   }
}
