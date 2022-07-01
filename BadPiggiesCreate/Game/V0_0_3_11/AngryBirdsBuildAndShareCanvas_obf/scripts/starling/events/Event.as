package starling.events
{
   import §=v§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §@H§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §%!R§:String = "triggered";
      
      public static const §0k§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §,5§:String = "removeFromJuggler";
       
      
      private var §&!A§:EventDispatcher;
      
      private var §8!#§:EventDispatcher;
      
      private var §;!<§:String;
      
      private var §-!0§:Boolean;
      
      private var §2!M§:Boolean;
      
      private var §`"#§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§;!<§ = param1;
         this.§-!0§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§2!M§ = true;
      }
      
      public function §package§() : void
      {
         this.§`"#§ = true;
         this.§2!M§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§;!<§,this.§-!0§);
      }
      
      function §;!_§(param1:EventDispatcher) : void
      {
         this.§&!A§ = param1;
      }
      
      function §]!8§(param1:EventDispatcher) : void
      {
         this.§8!#§ = param1;
      }
      
      function get §[!`§() : Boolean
      {
         return this.§2!M§;
      }
      
      function get §'!E§() : Boolean
      {
         return this.§`"#§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§-!0§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§&!A§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§8!#§;
      }
      
      public function get type() : String
      {
         return this.§;!<§;
      }
   }
}
