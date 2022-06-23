package starling.events
{
   import §8f§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §5!=§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §0P§:String = "triggered";
      
      public static const §#!7§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §0=§:String = "removeFromJuggler";
      
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
            §0P§ = "triggered";
            §#!7§ = "flatten";
            RESIZE = "resize";
            COMPLETE = "complete";
            if(_loc1_)
            {
               CONTEXT3D_CREATE = "context3DCreate";
               §0=§ = "removeFromJuggler";
            }
         }
      }
      
      private var §"^§:EventDispatcher;
      
      private var § %§:EventDispatcher;
      
      private var §,!5§:String;
      
      private var §2!D§:Boolean;
      
      private var §-V§:Boolean;
      
      private var §&7§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super();
            if(!_loc4_)
            {
               this.§,!5§ = param1;
               if(!_loc3_)
               {
               }
               §§goto(addr45);
            }
            this.§2!D§ = param2;
         }
         addr45:
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-V§ = true;
         }
      }
      
      public function §&!-§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§-V§ = this.§&7§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§,!5§,this.§2!D§);
      }
      
      function §8=§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"^§ = param1;
         }
      }
      
      function §4!B§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ %§ = param1;
         }
      }
      
      function get §@b§() : Boolean
      {
         return this.§-V§;
      }
      
      function get §]g§() : Boolean
      {
         return this.§&7§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§2!D§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§"^§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§ %§;
      }
      
      public function get type() : String
      {
         return this.§,!5§;
      }
   }
}
