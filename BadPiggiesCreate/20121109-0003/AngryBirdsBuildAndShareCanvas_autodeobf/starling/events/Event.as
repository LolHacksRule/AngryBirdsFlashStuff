package starling.events
{
   import §`!=§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §@1§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §6"!§:String = "triggered";
      
      public static const § s§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §'m§:String = "removeFromJuggler";
       
      
      private var §&d§:EventDispatcher;
      
      private var §'$§:EventDispatcher;
      
      private var §%!G§:String;
      
      private var §@"&§:Boolean;
      
      private var §8"?§:Boolean;
      
      private var §>"%§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§%!G§ = param1;
         this.§@"&§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§8"?§ = true;
      }
      
      public function §#!f§() : void
      {
         this.§>"%§ = true;
         this.§8"?§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§%!G§,this.§@"&§);
      }
      
      function § !!§(param1:EventDispatcher) : void
      {
         this.§&d§ = param1;
      }
      
      function §#"6§(param1:EventDispatcher) : void
      {
         this.§'$§ = param1;
      }
      
      function get §7!d§() : Boolean
      {
         return this.§8"?§;
      }
      
      function get §="+§() : Boolean
      {
         return this.§>"%§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§@"&§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§&d§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§'$§;
      }
      
      public function get type() : String
      {
         return this.§%!G§;
      }
   }
}
