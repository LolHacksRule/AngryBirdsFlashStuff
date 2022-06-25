package starling.events
{
   import §2N§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §@!!§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §<!!§:String = "triggered";
      
      public static const §&f§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §"!_§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            ADDED = "added";
            loop0:
            while(true)
            {
               ADDED_TO_STAGE = "addedToStage";
               addr132:
               while(true)
               {
                  ENTER_FRAME = "enterFrame";
                  addr127:
                  while(true)
                  {
                     §@!!§ = "removed";
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      private var §,t§:EventDispatcher;
      
      private var §`!k§:EventDispatcher;
      
      private var §2§:String;
      
      private var §+r§:Boolean;
      
      private var §>Q§:Boolean;
      
      private var §;!Q§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§2§ = param1;
               while(_loc3_)
               {
                  this.§+r§ = param2;
                  if(!_loc4_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§>Q§ = true;
         }
      }
      
      public function §[!+§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            this.§>Q§ = this.§;!Q§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§2§,this.§+r§);
      }
      
      function § 7§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,t§ = param1;
         }
      }
      
      function §2!N§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`!k§ = param1;
         }
      }
      
      function get §]A§() : Boolean
      {
         return this.§>Q§;
      }
      
      function get §-6§() : Boolean
      {
         return this.§;!Q§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§+r§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§,t§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§`!k§;
      }
      
      public function get type() : String
      {
         return this.§2§;
      }
   }
}
