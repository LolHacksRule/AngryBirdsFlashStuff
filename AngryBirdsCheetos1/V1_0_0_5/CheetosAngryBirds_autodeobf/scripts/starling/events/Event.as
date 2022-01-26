package starling.events
{
   import §<!M§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §?]§:String = "removed";
      
      public static const §8!?§:String = "removedFromStage";
      
      public static const §6!;§:String = "triggered";
      
      public static const §0!9§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §>&§:String = "removeFromJuggler";
       
      
      private var §2L§:EventDispatcher;
      
      private var §]!K§:EventDispatcher;
      
      private var §`D§:String;
      
      private var §"s§:Boolean;
      
      private var §'!M§:Boolean;
      
      private var §]J§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§`D§ = param1;
         this.§"s§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§'!M§ = true;
      }
      
      public function §2!Q§() : void
      {
         this.§]J§ = true;
         this.§'!M§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§`D§,this.§"s§);
      }
      
      function §[v§(param1:EventDispatcher) : void
      {
         this.§2L§ = param1;
      }
      
      function §%!;§(param1:EventDispatcher) : void
      {
         this.§]!K§ = param1;
      }
      
      function get §-;§() : Boolean
      {
         return this.§'!M§;
      }
      
      function get §@p§() : Boolean
      {
         return this.§]J§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§"s§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§2L§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§]!K§;
      }
      
      public function get type() : String
      {
         return this.§`D§;
      }
   }
}
