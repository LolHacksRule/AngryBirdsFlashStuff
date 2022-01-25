package starling.events
{
   import §?!Z§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const § "§:String = "removed";
      
      public static const §;'§:String = "removedFromStage";
      
      public static const §7!!§:String = "triggered";
      
      public static const §3C§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §[-§:String = "removeFromJuggler";
       
      
      private var §&>§:EventDispatcher;
      
      private var §%!?§:EventDispatcher;
      
      private var §%!5§:String;
      
      private var §7%§:Boolean;
      
      private var §"w§:Boolean;
      
      private var §[4§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§%!5§ = param1;
         this.§7%§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§"w§ = true;
      }
      
      public function §3^§() : void
      {
         this.§[4§ = true;
         this.§"w§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§%!5§,this.§7%§);
      }
      
      function §2%§(param1:EventDispatcher) : void
      {
         this.§&>§ = param1;
      }
      
      function §!K§(param1:EventDispatcher) : void
      {
         this.§%!?§ = param1;
      }
      
      function get §8M§() : Boolean
      {
         return this.§"w§;
      }
      
      function get §-y§() : Boolean
      {
         return this.§[4§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§7%§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§&>§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§%!?§;
      }
      
      public function get type() : String
      {
         return this.§%!5§;
      }
   }
}
