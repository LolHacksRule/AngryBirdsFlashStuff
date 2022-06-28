package starling.events
{
   import §8f§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §5!=§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §0P§:String = "triggered";
      
      public static const §#!7§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §0=§:String = "removeFromJuggler";
       
      
      private var §"^§:EventDispatcher;
      
      private var § %§:EventDispatcher;
      
      private var §,!5§:String;
      
      private var §2!D§:Boolean;
      
      private var §-V§:Boolean;
      
      private var §&7§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§,!5§ = param1;
         this.§2!D§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§-V§ = true;
      }
      
      public function §&!-§() : void
      {
         this.§&7§ = true;
         this.§-V§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§,!5§,this.§2!D§);
      }
      
      function §8=§(param1:EventDispatcher) : void
      {
         this.§"^§ = param1;
      }
      
      function §4!B§(param1:EventDispatcher) : void
      {
         this.§ %§ = param1;
      }
      
      function get §@b§() : Boolean
      {
         return this.§-V§;
      }
      
      function get §]g§() : Boolean
      {
         return this.§&7§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§2!D§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§"^§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§ %§;
      }
      
      public function get type() : String
      {
         return this.§,!5§;
      }
   }
}
