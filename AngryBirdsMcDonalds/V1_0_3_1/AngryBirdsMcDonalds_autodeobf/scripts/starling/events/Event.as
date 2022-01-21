package starling.events
{
   import §=G§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §4M§:String = "removed";
      
      public static const § $§:String = "removedFromStage";
      
      public static const §#!;§:String = "triggered";
      
      public static const override:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §>>§:String = "removeFromJuggler";
       
      
      private var §&J§:EventDispatcher;
      
      private var §]E§:EventDispatcher;
      
      private var §,?§:String;
      
      private var §2!?§:Boolean;
      
      private var §!M§:Boolean;
      
      private var §3V§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§,?§ = param1;
         this.§2!?§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§!M§ = true;
      }
      
      public function §9!'§() : void
      {
         this.§3V§ = true;
         this.§!M§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§,?§,this.§2!?§);
      }
      
      function §?!]§(param1:EventDispatcher) : void
      {
         this.§&J§ = param1;
      }
      
      function §0q§(param1:EventDispatcher) : void
      {
         this.§]E§ = param1;
      }
      
      function get §+Q§() : Boolean
      {
         return this.§!M§;
      }
      
      function get § U§() : Boolean
      {
         return this.§3V§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§2!?§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§&J§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§]E§;
      }
      
      public function get type() : String
      {
         return this.§,?§;
      }
   }
}
