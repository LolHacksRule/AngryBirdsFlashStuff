package starling.events
{
   import §6x§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §1c§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §?Z§:String = "triggered";
      
      public static const §^!g§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §%%§:String = "removeFromJuggler";
       
      
      private var §8!$§:EventDispatcher;
      
      private var §+!6§:EventDispatcher;
      
      private var §&"§:String;
      
      private var §<2§:Boolean;
      
      private var §,S§:Boolean;
      
      private var §<L§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§&"§ = param1;
         this.§<2§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§,S§ = true;
      }
      
      public function §4! §() : void
      {
         this.§<L§ = true;
         this.§,S§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§&"§,this.§<2§);
      }
      
      function §#!0§(param1:EventDispatcher) : void
      {
         this.§8!$§ = param1;
      }
      
      function §0!q§(param1:EventDispatcher) : void
      {
         this.§+!6§ = param1;
      }
      
      function get §6!u§() : Boolean
      {
         return this.§,S§;
      }
      
      function get §%A§() : Boolean
      {
         return this.§<L§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§<2§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§8!$§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§+!6§;
      }
      
      public function get type() : String
      {
         return this.§&"§;
      }
   }
}
