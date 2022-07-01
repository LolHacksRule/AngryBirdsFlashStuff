package starling.events
{
   import §`!"§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §;!J§:String = "removed";
      
      public static const §#H§:String = "removedFromStage";
      
      public static const §@!V§:String = "triggered";
      
      public static const §2!F§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §&`§:String = "removeFromJuggler";
       
      
      private var §6"'§:EventDispatcher;
      
      private var § case§:EventDispatcher;
      
      private var §`u§:String;
      
      private var §9!6§:Boolean;
      
      private var §7[§:Boolean;
      
      private var §[!E§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§`u§ = param1;
         this.§9!6§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§7[§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§[!E§ = true;
         this.§7[§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§`u§,this.§9!6§);
      }
      
      function §'7§(param1:EventDispatcher) : void
      {
         this.§6"'§ = param1;
      }
      
      function §1h§(param1:EventDispatcher) : void
      {
         this.§ case§ = param1;
      }
      
      function get §]!N§() : Boolean
      {
         return this.§7[§;
      }
      
      function get §8!R§() : Boolean
      {
         return this.§[!E§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§9!6§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§6"'§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§ case§;
      }
      
      public function get type() : String
      {
         return this.§`u§;
      }
   }
}
