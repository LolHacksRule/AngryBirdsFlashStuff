package starling.events
{
   import §-!A§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §2j§:String = "removed";
      
      public static const §8K§:String = "removedFromStage";
      
      public static const §5!>§:String = "triggered";
      
      public static const §`j§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §8! §:String = "removeFromJuggler";
       
      
      private var §<[§:EventDispatcher;
      
      private var §]f§:EventDispatcher;
      
      private var §^U§:String;
      
      private var §8!L§:Boolean;
      
      private var § !#§:Boolean;
      
      private var §^!4§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§^U§ = param1;
         this.§8!L§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§ !#§ = true;
      }
      
      public function §1!;§() : void
      {
         this.§^!4§ = true;
         this.§ !#§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§^U§,this.§8!L§);
      }
      
      function §?p§(param1:EventDispatcher) : void
      {
         this.§<[§ = param1;
      }
      
      function §"0§(param1:EventDispatcher) : void
      {
         this.§]f§ = param1;
      }
      
      function get §=6§() : Boolean
      {
         return this.§ !#§;
      }
      
      function get §"!5§() : Boolean
      {
         return this.§^!4§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§8!L§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§<[§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§]f§;
      }
      
      public function get type() : String
      {
         return this.§^U§;
      }
   }
}
