package starling.events
{
   import §,G§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §[Q§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §7!,§:String = "triggered";
      
      public static const §02§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §^#§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            ADDED = "added";
            ADDED_TO_STAGE = "addedToStage";
         }
         if(!(_loc2_ && _loc2_))
         {
            §7!,§ = "triggered";
            §02§ = "flatten";
            RESIZE = "resize";
            COMPLETE = "complete";
            if(_loc1_)
            {
               CONTEXT3D_CREATE = "context3DCreate";
               §^#§ = "removeFromJuggler";
            }
         }
      }
      
      private var §#B§:EventDispatcher;
      
      private var §&@§:EventDispatcher;
      
      private var §[!+§:String;
      
      private var §8v§:Boolean;
      
      private var §7n§:Boolean;
      
      private var §#!7§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super();
            if(!_loc4_)
            {
               this.§[!+§ = param1;
               if(!_loc3_)
               {
               }
               §§goto(addr45);
            }
            this.§8v§ = param2;
         }
         addr45:
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§7n§ = true;
         }
      }
      
      public function §=p§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§7n§ = this.§#!7§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§[!+§,this.§8v§);
      }
      
      function §#^§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#B§ = param1;
         }
      }
      
      function §%!C§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&@§ = param1;
         }
      }
      
      function get §3!%§() : Boolean
      {
         return this.§7n§;
      }
      
      function get §>^§() : Boolean
      {
         return this.§#!7§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§8v§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§#B§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§&@§;
      }
      
      public function get type() : String
      {
         return this.§[!+§;
      }
   }
}
