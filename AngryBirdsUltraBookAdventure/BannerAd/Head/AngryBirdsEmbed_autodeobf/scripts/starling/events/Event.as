package starling.events
{
   import §8f§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §]g§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §5!=§:String = "triggered";
      
      public static const §0P§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §#!7§:String = "removeFromJuggler";
       
      
      private var §&l§:EventDispatcher;
      
      private var §`1§:EventDispatcher;
      
      private var §,!5§:String;
      
      private var § %§:Boolean;
      
      private var §2!D§:Boolean;
      
      private var §-V§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§,!5§ = param1;
         this.§ %§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§2!D§ = true;
      }
      
      public function §&7§() : void
      {
         this.§-V§ = true;
         this.§2!D§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§,!5§,this.§ %§);
      }
      
      function §&!-§(param1:EventDispatcher) : void
      {
         this.§&l§ = param1;
      }
      
      function §8=§(param1:EventDispatcher) : void
      {
         this.§`1§ = param1;
      }
      
      function get §4!B§() : Boolean
      {
         return this.§2!D§;
      }
      
      function get §@b§() : Boolean
      {
         return this.§-V§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§ %§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§&l§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§`1§;
      }
      
      public function get type() : String
      {
         return this.§,!5§;
      }
   }
}
