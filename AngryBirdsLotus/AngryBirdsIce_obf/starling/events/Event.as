package starling.events
{
   import §3!$§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §+_§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §9!-§:String = "triggered";
      
      public static const § -§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §<!D§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            ADDED = "added";
            ADDED_TO_STAGE = "addedToStage";
            loop0:
            while(true)
            {
               ENTER_FRAME = "enterFrame";
               §+_§ = "removed";
               while(true)
               {
                  REMOVED_FROM_STAGE = "removedFromStage";
                  §9!-§ = "triggered";
                  continue loop0;
                  addr29:
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                     addr36:
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      private var §3!2§:EventDispatcher;
      
      private var §,Q§:EventDispatcher;
      
      private var §@!B§:String;
      
      private var §6$§:Boolean;
      
      private var §%l§:Boolean;
      
      private var §>w§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            do
            {
               this.§@!B§ = param1;
               do
               {
                  this.§6$§ = param2;
               }
               while(_loc4_ && this);
               
            }
            while(!_loc3_);
            
         }
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§%l§ = true;
         }
      }
      
      public function §'!9§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%l§ = this.§>w§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§@!B§,this.§6$§);
      }
      
      function §!g§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§3!2§ = param1;
         }
      }
      
      function §1!-§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§,Q§ = param1;
         }
      }
      
      function get §[!=§() : Boolean
      {
         return this.§%l§;
      }
      
      function get §^!A§() : Boolean
      {
         return this.§>w§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§6$§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§3!2§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§,Q§;
      }
      
      public function get type() : String
      {
         return this.§@!B§;
      }
   }
}
