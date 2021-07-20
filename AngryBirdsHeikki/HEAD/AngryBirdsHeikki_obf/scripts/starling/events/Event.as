package starling.events
{
   import §`>§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §+!a§:String = "removed";
      
      public static const §``§:String = "removedFromStage";
      
      public static const §+!X§:String = "triggered";
      
      public static const §"U§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §5!3§:String = "removeFromJuggler";
       
      
      private var §+! §:EventDispatcher;
      
      private var §`!A§:EventDispatcher;
      
      private var §1@§:String;
      
      private var §2!F§:Boolean;
      
      private var §=J§:Boolean;
      
      private var §2z§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§1@§ = param1;
         this.§2!F§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§=J§ = true;
      }
      
      public function §,'§() : void
      {
         this.§2z§ = true;
         this.§=J§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§1@§,this.§2!F§);
      }
      
      function §^!Y§(param1:EventDispatcher) : void
      {
         this.§+! § = param1;
      }
      
      function §"#§(param1:EventDispatcher) : void
      {
         this.§`!A§ = param1;
      }
      
      function get §!!Y§() : Boolean
      {
         return this.§=J§;
      }
      
      function get §7!<§() : Boolean
      {
         return this.§2z§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§2!F§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§+! §;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§`!A§;
      }
      
      public function get type() : String
      {
         return this.§1@§;
      }
   }
}
