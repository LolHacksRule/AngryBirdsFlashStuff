package starling.events
{
   import §6x§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §1c§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §?Z§:String = "triggered";
      
      public static const §^!g§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §%%§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            ADDED = "added";
            if(_loc1_ || _loc2_)
            {
               ADDED_TO_STAGE = "addedToStage";
               if(_loc1_ || _loc2_)
               {
                  ENTER_FRAME = "enterFrame";
                  §1c§ = "removed";
                  if(_loc1_)
                  {
                     REMOVED_FROM_STAGE = "removedFromStage";
                     §?Z§ = "triggered";
                     §^!g§ = "flatten";
                     §§goto(addr67);
                  }
                  §§goto(addr92);
               }
               §§goto(addr105);
            }
            §§goto(addr92);
         }
         addr67:
         if(!(_loc2_ && Event))
         {
            RESIZE = "resize";
            if(!_loc2_)
            {
               addr92:
               COMPLETE = "complete";
               addr95:
               CONTEXT3D_CREATE = "context3DCreate";
               if(_loc1_ || Event)
               {
                  addr105:
                  §%%§ = "removeFromJuggler";
               }
            }
            §§goto(addr95);
         }
      }
      
      private var §8!$§:EventDispatcher;
      
      private var §+!6§:EventDispatcher;
      
      private var §&"§:String;
      
      private var §<2§:Boolean;
      
      private var §,S§:Boolean;
      
      private var §<L§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            if(!(_loc4_ && param1))
            {
               §§goto(addr37);
            }
            §§goto(addr47);
         }
         addr37:
         this.§&"§ = param1;
         if(_loc3_ || param1)
         {
            addr47:
            this.§<2§ = param2;
         }
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§,S§ = true;
         }
      }
      
      public function §4! §() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,S§ = this.§<L§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§&"§,this.§<2§);
      }
      
      function §#!0§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!$§ = param1;
         }
      }
      
      function §0!q§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§+!6§ = param1;
         }
      }
      
      function get §6!u§() : Boolean
      {
         return this.§,S§;
      }
      
      function get §%A§() : Boolean
      {
         return this.§<L§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§<2§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§8!$§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§+!6§;
      }
      
      public function get type() : String
      {
         return this.§&"§;
      }
   }
}
