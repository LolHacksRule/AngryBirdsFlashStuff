package starling.events
{
   import §<!M§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §8!?§:String = "removed";
      
      public static const §6!;§:String = "removedFromStage";
      
      public static const §0!9§:String = "triggered";
      
      public static const §>&§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §<@§:String = "removeFromJuggler";
       
      
      private var §5!F§:EventDispatcher;
      
      private var §"s§:EventDispatcher;
      
      private var §&!9§:String;
      
      private var §'!M§:Boolean;
      
      private var §]J§:Boolean;
      
      private var §2!Q§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§&!9§ = param1;
         this.§'!M§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§]J§ = true;
      }
      
      public function §[v§() : void
      {
         this.§2!Q§ = true;
         this.§]J§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§&!9§,this.§'!M§);
      }
      
      function §%!;§(param1:EventDispatcher) : void
      {
         this.§5!F§ = param1;
      }
      
      function §-;§(param1:EventDispatcher) : void
      {
         this.§"s§ = param1;
      }
      
      function get §@p§() : Boolean
      {
         return this.§]J§;
      }
      
      function get §?]§() : Boolean
      {
         return this.§2!Q§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§'!M§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§5!F§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§"s§;
      }
      
      public function get type() : String
      {
         return this.§&!9§;
      }
   }
}
