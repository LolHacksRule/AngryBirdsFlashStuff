package starling.events
{
   import §#M§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §"9§:String = "removed";
      
      public static const §[h§:String = "removedFromStage";
      
      public static const §>!5§:String = "triggered";
      
      public static const §-O§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §^4§:String = "removeFromJuggler";
       
      
      private var §9Q§:EventDispatcher;
      
      private var §&E§:EventDispatcher;
      
      private var §0J§:String;
      
      private var §+j§:Boolean;
      
      private var §9J§:Boolean;
      
      private var §?!J§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§0J§ = param1;
         this.§+j§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§9J§ = true;
      }
      
      public function §!j§() : void
      {
         this.§?!J§ = true;
         this.§9J§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§0J§,this.§+j§);
      }
      
      function §'3§(param1:EventDispatcher) : void
      {
         this.§9Q§ = param1;
      }
      
      function §0!%§(param1:EventDispatcher) : void
      {
         this.§&E§ = param1;
      }
      
      function get §^2§() : Boolean
      {
         return this.§9J§;
      }
      
      function get §+^§() : Boolean
      {
         return this.§?!J§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§+j§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§9Q§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§&E§;
      }
      
      public function get type() : String
      {
         return this.§0J§;
      }
   }
}
