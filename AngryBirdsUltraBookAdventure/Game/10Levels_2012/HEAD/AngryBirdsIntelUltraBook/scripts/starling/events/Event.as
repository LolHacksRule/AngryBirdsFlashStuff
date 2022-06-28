package starling.events
{
   import §@2§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §"!5§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §;!g§:String = "triggered";
      
      public static const §8Z§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §4P§:String = "removeFromJuggler";
       
      
      private var §`N§:EventDispatcher;
      
      private var §;!5§:EventDispatcher;
      
      private var §9!Q§:String;
      
      private var §[!b§:Boolean;
      
      private var §?^§:Boolean;
      
      private var §@!+§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§9!Q§ = param1;
         this.§[!b§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§?^§ = true;
      }
      
      public function §@!N§() : void
      {
         this.§@!+§ = true;
         this.§?^§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§9!Q§,this.§[!b§);
      }
      
      function §&z§(param1:EventDispatcher) : void
      {
         this.§`N§ = param1;
      }
      
      function §+!M§(param1:EventDispatcher) : void
      {
         this.§;!5§ = param1;
      }
      
      function get §<Q§() : Boolean
      {
         return this.§?^§;
      }
      
      function get §]5§() : Boolean
      {
         return this.§@!+§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§[!b§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§`N§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§;!5§;
      }
      
      public function get type() : String
      {
         return this.§9!Q§;
      }
   }
}
