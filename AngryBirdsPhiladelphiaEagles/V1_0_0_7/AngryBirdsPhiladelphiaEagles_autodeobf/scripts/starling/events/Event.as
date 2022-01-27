package starling.events
{
   import §#!5§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const § b§:String = "removed";
      
      public static const §"e§:String = "removedFromStage";
      
      public static const §74§:String = "triggered";
      
      public static const §!!;§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §&^§:String = "removeFromJuggler";
       
      
      private var §<#§:EventDispatcher;
      
      private var §4r§:EventDispatcher;
      
      private var §5L§:String;
      
      private var §&H§:Boolean;
      
      private var §8Z§:Boolean;
      
      private var §?B§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§5L§ = param1;
         this.§&H§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§8Z§ = true;
      }
      
      public function §]u§() : void
      {
         this.§?B§ = true;
         this.§8Z§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§5L§,this.§&H§);
      }
      
      function §0%§(param1:EventDispatcher) : void
      {
         this.§<#§ = param1;
      }
      
      function §0>§(param1:EventDispatcher) : void
      {
         this.§4r§ = param1;
      }
      
      function get §"!8§() : Boolean
      {
         return this.§8Z§;
      }
      
      function get §]!4§() : Boolean
      {
         return this.§?B§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§&H§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§<#§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§4r§;
      }
      
      public function get type() : String
      {
         return this.§5L§;
      }
   }
}
