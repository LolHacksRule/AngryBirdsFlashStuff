package starling.events
{
   import §1V§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §if§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §+=§:String = "triggered";
      
      public static const §'!l§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §@!e§:String = "removeFromJuggler";
       
      
      private var § !8§:EventDispatcher;
      
      private var §1g§:EventDispatcher;
      
      private var §%8§:String;
      
      private var §&c§:Boolean;
      
      private var §#!B§:Boolean;
      
      private var § +§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§%8§ = param1;
         this.§&c§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§#!B§ = true;
      }
      
      public function §`!v§() : void
      {
         this.§ +§ = true;
         this.§#!B§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§%8§,this.§&c§);
      }
      
      function §;"#§(param1:EventDispatcher) : void
      {
         this.§ !8§ = param1;
      }
      
      function §?!D§(param1:EventDispatcher) : void
      {
         this.§1g§ = param1;
      }
      
      function get §[![§() : Boolean
      {
         return this.§#!B§;
      }
      
      function get §<"1§() : Boolean
      {
         return this.§ +§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§&c§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§ !8§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§1g§;
      }
      
      public function get type() : String
      {
         return this.§%8§;
      }
   }
}
