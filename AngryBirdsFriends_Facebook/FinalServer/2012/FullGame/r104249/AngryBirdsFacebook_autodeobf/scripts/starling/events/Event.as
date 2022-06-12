package starling.events
{
   import §8!8§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §&J§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §`!1§:String = "triggered";
      
      public static const §5[§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §5!o§:String = "removeFromJuggler";
       
      
      private var §^e§:EventDispatcher;
      
      private var §>!E§:EventDispatcher;
      
      private var §6#§:String;
      
      private var §5g§:Boolean;
      
      private var §`!=§:Boolean;
      
      private var §4!7§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§6#§ = param1;
         this.§5g§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§`!=§ = true;
      }
      
      public function §4s§() : void
      {
         this.§4!7§ = true;
         this.§`!=§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§6#§,this.§5g§);
      }
      
      function §<r§(param1:EventDispatcher) : void
      {
         this.§^e§ = param1;
      }
      
      function §9&§(param1:EventDispatcher) : void
      {
         this.§>!E§ = param1;
      }
      
      function get §@h§() : Boolean
      {
         return this.§`!=§;
      }
      
      function get §8"K§() : Boolean
      {
         return this.§4!7§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§5g§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§^e§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§>!E§;
      }
      
      public function get type() : String
      {
         return this.§6#§;
      }
   }
}
