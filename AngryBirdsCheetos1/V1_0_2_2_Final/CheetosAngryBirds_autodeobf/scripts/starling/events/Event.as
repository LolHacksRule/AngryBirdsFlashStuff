package starling.events
{
   import §;! §.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §0'§:String = "removed";
      
      public static const §?+§:String = "removedFromStage";
      
      public static const §9c§:String = "triggered";
      
      public static const §,!Z§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §0<§:String = "removeFromJuggler";
       
      
      private var §`!^§:EventDispatcher;
      
      private var §&!2§:EventDispatcher;
      
      private var §`Z§:String;
      
      private var §"9§:Boolean;
      
      private var § z§:Boolean;
      
      private var §>s§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§`Z§ = param1;
         this.§"9§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§ z§ = true;
      }
      
      public function §in§() : void
      {
         this.§>s§ = true;
         this.§ z§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§`Z§,this.§"9§);
      }
      
      function §&2§(param1:EventDispatcher) : void
      {
         this.§`!^§ = param1;
      }
      
      function §#o§(param1:EventDispatcher) : void
      {
         this.§&!2§ = param1;
      }
      
      function get §9!$§() : Boolean
      {
         return this.§ z§;
      }
      
      function get §6^§() : Boolean
      {
         return this.§>s§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§"9§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§`!^§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§&!2§;
      }
      
      public function get type() : String
      {
         return this.§`Z§;
      }
   }
}
