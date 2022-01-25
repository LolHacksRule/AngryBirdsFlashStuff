package starling.events
{
   import §1Q§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §'"-§:String = "removed";
      
      public static const §!!k§:String = "removedFromStage";
      
      public static const §&!3§:String = "triggered";
      
      public static const §=`§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §2"+§:String = "removeFromJuggler";
       
      
      private var §'X§:EventDispatcher;
      
      private var §#!"§:EventDispatcher;
      
      private var §=3§:String;
      
      private var §!!-§:Boolean;
      
      private var §'!`§:Boolean;
      
      private var §0!>§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§=3§ = param1;
         this.§!!-§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§'!`§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§0!>§ = true;
         this.§'!`§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§=3§,this.§!!-§);
      }
      
      function §#2§(param1:EventDispatcher) : void
      {
         this.§'X§ = param1;
      }
      
      function §0![§(param1:EventDispatcher) : void
      {
         this.§#!"§ = param1;
      }
      
      function get §`z§() : Boolean
      {
         return this.§'!`§;
      }
      
      function get §&R§() : Boolean
      {
         return this.§0!>§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§!!-§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§'X§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§#!"§;
      }
      
      public function get type() : String
      {
         return this.§=3§;
      }
   }
}
